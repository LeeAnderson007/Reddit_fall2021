import React from 'react'

const NewTopic = (props) => {
    //{subYo:{id, name}, x:1, t:'this is t'}
    const { subYo } = props;
    return (
        <div>
            <h1>New Topic</h1>
            <form action={`/subs/${props.subYo}/topics`} method="post">
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