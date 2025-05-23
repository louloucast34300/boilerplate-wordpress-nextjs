'use server';

export const testServer = async () => {
    const response = await fetch('http://wordpress/wp-json/wp/v2/posts?_embed');
    const result = await response.json();
    console.log(result);
}