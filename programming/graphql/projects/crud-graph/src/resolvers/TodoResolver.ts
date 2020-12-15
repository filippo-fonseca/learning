import { Todo } from "../entity/Todo";
import { Mutation, Resolver, Arg, Query } from "type-graphql";

@Resolver()
export class TodoResolver {
  @Mutation(() => Boolean)
  async createTodo(
    @Arg("title") title: string,
    @Arg("description") description: string
  ) {
    await Todo.insert({ title, description });
    return true;
  }

  @Query(() => [Todo])
  todo() {
    return Todo.find();
  }
}
