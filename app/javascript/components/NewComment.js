import React from "react";

const NewComment = (props) => {
    //{subYo:{id, name}, x:1, t:'this is t'}
    const { topic } = props;
    return (
        <div>
            <h1>New comment</h1>
            <form action={`/topics/${topic.id}/topics`} method="post">
                <p>body</p>
                <input name="comment[body]"/>
                <p>flagged</p>
                {/* <input name="comment[flagged]" /> */}
                <input type="Checkbox" name = "comment[flaggedxc]" />

                <button type="submit">add</button>
            </form>
        </div>
    );
};

export default NewComment;