import React, { useState, useEffect } from 'react';

export const Tasks = () => {
  const [tasks, setTasks] = useState([]);
  const [isLoading, setIsLoading] = useState(true);
  const [isError, setIsError] = useState(false);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await window.fetch(`http://localhost:3000/tasks`);
        if (!response.ok) throw Error(response.statusText);
        const data = await response.json();
        setTasks(data);
      } catch (error) {
        setIsError(true);
        console.error(error);
      }

      setIsLoading(false);
    };

    fetchData();
  }, []);

  return (
    <>
      {isError && <p>Something went wrong. Check the console.</p>}

      {isLoading ? <p>Loading...</p> : <>{JSON.stringify(tasks)}</>}
    </>
  );
}
