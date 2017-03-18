class LikeButtonComponent extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      hovered: false,
      count: 10,
      liked: false  
    };
  }
    
  styles() {
    return {
      container: {
        fontFamily: "helvetica, arial, 'hiragino kaku gothic pro', meiryo, 'ms pgothic', sans-serif",
        fontSize: 11
      },
      heart: {
	position: 'relative',
	background: 'url(' + this.props.heart_image_url + ')',
	backgroundPosition: 'left',
	repeat: 'noRepeat',
	backgroundSize: '200%',
	height: 50,
	width: 50,
	marginTop: -10,
	marginRight: -18
      },
      heartLiked: {
	backgroundPosition: 'right'
      }
    };
  }

  onMouseEnter() {
    this.setState({hovered: true});
  }

  onMouseLeave() {
    this.setState({hovered: false});
  }

  onClick() {
    this.setState({liked: !this.state.liked});
  }

  render() {
    const styles = this.styles();

    // ハートのスタイルを設定
    let heartStyle;
    if (!(this.state.liked) && !(this.state.hovered)) {
      heartStyle = styles.heart;
    } else {
      heartStyle = Object.assign(styles.heart, styles.heartLiked);
    }

    return (
      <div style={styles.container}>
	<a href="javascript:void(0);">
	  <div
            style={heartStyle}
            onMouseEnter={this.onMouseEnter.bind(this)}
	    onMouseLeave={this.onMouseLeave.bind(this)}
	    onClick={this.onClick.bind(this)}>
	  </div>
	</a>
      </div>
    );
  }
}



