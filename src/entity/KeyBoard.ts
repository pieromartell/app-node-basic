import { Entity, BaseEntity, PrimaryGeneratedColumn, Column } from 'typeorm';

@Entity()
class KeyBoard extends BaseEntity {
  @PrimaryGeneratedColumn()
  idKeyBoard: number;
  @Column()
  modelKey: string;
  @Column()
  brand: string;
  @Column()
  price: number;
  @Column()
  state: boolean;

}
export default KeyBoard;