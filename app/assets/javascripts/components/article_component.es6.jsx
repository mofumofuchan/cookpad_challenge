class ArticleComponent extends React.Component {
  render () {
    return (
      <div className="article">
	<div className="article-header">
	  <a href={this.props.user_url}>{this.props.email}</a>
	</div>
	<div className="article-drawing">
	  <img src={this.props.drawing_url} />
	</div>
	<div className="article-content">
	  {this.props.content}
	</div>
	<div className="article-meta">
	  {this.props.created_at}
          <div className="buttons">
	    <LikeButtonComponent {...this.props} />
	  </div>
	</div>
      </div>
    );
  }
}

