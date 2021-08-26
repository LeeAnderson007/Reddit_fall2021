import React from 'react'

export default (props) =>  {

    const { topics, sub } = props;
    return (
      <>
        <h1>Topics Page from {sub.name} sub</h1>
        <a href={`/subs/${sub.id}`}>back to sub show</a>
        <a href={`/`}>back to subs</a>
        <a href={`/subs/${sub.id}/topics/new`}>topic new</a>
        {topics.map((topic) => (
          <div key={topic.id} className="topic-card">
            <h3>{topic.name}</h3>
            <p>{topic.body}</p>
            <a href={`/subs/${sub.id}/topics/${topics.id}`}>show topic</a>
            show topic ()
            <a href={`/subs/${sub.id}/topics/${topics.id}`}>show comment</a>
            
            <a href={`/subs/${sub.id}/topics/${topics.id}/edit`}>edit topic</a>
            <a href={`/subs/${sub.id}/topics/${topics.id}`}>delete topic</a> data-method="delete">
            delete topic
            
            {/* <a href={`/subs/${sub.id}/topics/${topic.id}`}>topic show</a>
            <a href={`/subs/${sub.id}/topics/${topic.id}/edit`}>topic edit</a>
            <a href={`/subs/${sub.id}/topics/${topic.id}`} data-method="delete">
              topic delete
            </a> */}
          </div>
        ))}
      </>
    );

}