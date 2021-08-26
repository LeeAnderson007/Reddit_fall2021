import React from 'react'

const Editopic = (props) => {
    //{subYo:{id, name}, x:1, t:'this is t'}
    const { sub, topic } = props;
    return (
        <div>
            <h1>Edit Topic</h1>
            <form action={`/subs/${sub.id}/topics`} method="post">
                <p>name</p>
                <input name="topic[name]"/>
                <p>body</p>
                <input name="topic[body]"/>
                <button type="submit">add</button>
            </form>
        </div>
    );
};

export default NewTopic;