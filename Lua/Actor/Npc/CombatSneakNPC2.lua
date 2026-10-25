require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local SneakAI2 = class("SneakAI2", NpcActorProxy)
local Q40195ClientConfig = require("Quest/Client/Q40195ClientConfig")

SneakAI2.defaultAlias = "SneakAI2"
SneakAI2.PatrolPosNum = 2
SneakAI2.PatrolPos = nil
SneakAI2.PatrolDir = nil
SneakAI2.PatrolNext = 1
SneakAI2.NarratorTag1 = 0
local routlist = {}
local str = "Q4019504_N15308_Route2"
routlist[1] = "Q4019504_N15308_Route1"
routlist[2] = str
SneakAI2.Routlist = routlist

function SneakAI2:StartPatrol()
    print("\231\147\166\229\138\170\229\141\161PatrolNext=" .. self.PatrolNext)
    if self.uActor == nil then
        return
    end

    if self.PatrolNext == 1 then
        self.Behave(self)
    else
        if self.PatrolNext == 2 then
            print("\231\147\166\229\138\170\229\141\161\231\130\185\231\154\132\229\186\143\229\136\151\229\143\183\230\152\175\239\188\154 " .. self.PatrolNext)
            print("\231\147\166\229\138\170\229\141\161\231\130\185\228\189\141\229\144\141\231\167\176\230\152\175\239\188\154 " .. self.Routlist[self.PatrolNext])
            print("\231\147\166\229\138\170\229\141\161\229\133\183\228\189\147\229\157\144\230\160\135\228\184\186\239\188\154X=" .. sceneData:GetDummyPoint(3, self.Routlist[self.PatrolNext]).pos.x .. " Y=" .. sceneData:GetDummyPoint(3, self.Routlist[self.PatrolNext]).pos.y .. " Z=" .. sceneData:GetDummyPoint(3, self.Routlist[self.PatrolNext]).pos.z)
            self.Standby(self)
            self.DoFreeStateTrigger(self)
            self.WalkToTask(self, sceneData:GetDummyPoint(3, self.Routlist[self.PatrolNext]).pos, self.Behave, nil, nil, function()
                self:SyncPos(1)
            end)
        else
            self.PatrolNext = self.PatrolNext + 1
            if self.PatrolNext > self.PatrolPosNum then
                self.PatrolNext = 2
            end

            self.WalkToTask(self, self.PatrolPos[self.PatrolNext], self.Behave)
        end
    end
end

function SneakAI2:Behave()
    print("\231\147\166\229\138\170\229\141\161\230\137\167\232\161\140behave" .. self.PatrolNext)
    if self.uActor == nil then
        return
    end

    if self.PatrolNext == 1 then
        self.Standby(self)
        self.DoFreeStyle(self, 1230)
        self.NarratorTag1 = self.NarratorTag1 + 1
        print("\231\147\166\229\138\170\229\141\161NarratorTag1 =" .. self.NarratorTag1)
        if self.NarratorTag1 == 1 then
            local actor = actorMgr:GetActor(Q40195ClientConfig.ActorAlias)
            if actor ~= nil then
                print("\231\147\166\229\138\170\229\141\161\230\146\173\229\188\128\232\189\166")
                actor.QuestNarratorTask(actor, Q40195ClientConfig.Datas.NarratorWithId_4019502, function(arg1, arg2)
                    if arg2 ~= nil then
                        print("\231\147\166\229\138\170\229\141\161task isFinished=" .. tostring(arg2.isFinished))
                        if arg2.isFinished then
                            actor:GetQuestNpcActor("Npc15309"):PartnerReturnToPatrol()
                            print("\231\147\166\229\138\170\229\141\161\233\128\154\231\159\165\228\186\134\230\159\165\233\156\141\229\176\148")
                            self:CallDelay(2, function()
                                local questNpcActor = actor:GetQuestNpcActor("Npc15308")
                                questNpcActor:DoFreeStateTrigger()
                                questNpcActor.PatrolNext = questNpcActor.PatrolNext + 1
                                questNpcActor:StartPatrol()
                                actorMgr:GetActor(Q40195ClientConfig.ActorAlias):FinishQuestID(false, 4019504)
                                print("\231\147\166\229\138\170\229\141\161task\230\173\163\229\184\184\229\174\140\230\136\144\229\155\158\232\176\131")
                            end)
                        else
                            print("\231\147\166\229\138\170\229\141\161task\229\188\130\229\184\184\231\187\147\230\157\159\229\155\158\232\176\131")
                        end
                    else
                        print("\231\147\166\229\138\170\229\141\161task is nil")
                    end
                end, 40195)
            end
        end
    else
        if self.PatrolNext == 2 then
            self.Standby(self)
            self.DoFreeStyle(self, 1120)
            self.PatrolNext = self.PatrolNext + 1
            self.StartPatrol(self)
        else
            self.PatrolNext = self.PatrolNext + 1
            self.StartPatrol(self)
        end
    end
end

function SneakAI2:ReturnToPatrol()
    print("\231\147\166\229\138\170\229\141\161\230\186\156\228\186\134\230\186\156\228\186\134")
    self:StartPatrol()
end

function SneakAI2:Aware()
    print("\231\147\166\229\138\170\229\141\161\230\136\145\229\143\145\231\142\176\228\189\160\228\186\134\239\188\129")
    self:ClearFollowTask()
    self:Standby()
    self:DoFreeStateTrigger()
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetPos()
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    self:SteerToAutonomyTask(tbl, 1, true, true)
    self:DoFreeStyle(1050)
end

function SneakAI2:Discover()
    print("\231\147\166\229\138\170\229\141\161\230\136\145\230\138\147\229\136\176\228\189\160\228\186\134\239\188\129")
    self:Standby()
    self:DoFreeStateTrigger()
    self:ClearNarratorTask()
    self:StopNarrator()
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetPos()
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    self:EnterSceneLookCamera(pos, 0, 4, true, true)
    self:SteerToAutonomyTask(tbl, 1, true, true)
    self:DoFreeStyle(1141)
    local actor = actorMgr:GetActor(Q40195ClientConfig.ActorAlias)
    if actor ~= nil then
        actor.QuestNarratorTask(actor, Q40195ClientConfig.Datas.NarratorWithId_4019505, function()
            actor:FinishQuestID(true, 4019504)
            actor:FinishQuestID(true, 4019514)
            actor:FinishQuestID(true, 4019515)
            actor:ShowBlackScreen(0.5, 0.5, 0.5, function()
                actor:DestroyQuestNpcActor("Npc15307")
                actor:DestroyQuestNpcActor("Npc15308")
                actor:DestroyQuestNpcActor("Npc15309")
            end, nil, nil, "", false, true)
        end, 40195)
    end
end

function SneakAI2:OnLure(arg1, arg2)
    if arg2.hasSound == true then
        print("\231\147\166\229\138\170\229\141\161\229\143\145\231\142\176\230\137\148\231\159\179\229\173\144\228\186\134\239\188\129")
        local pos = self:GetPos()
        local tbl = {x = arg2.soundPos.x - pos.x, y = arg2.soundPos.y - pos.y, z = arg2.soundPos.z - pos.z}
        self:SteerToAutonomyTask(tbl, 1, true, true)
        self:DoFreeStyle(1050)
        self:CallDelay(2, function(arg1, arg2_2)
            arg1:Standby()
            arg1:DoFreeStateTrigger()
            arg1:WalkToTask(arg2.soundPos, arg1.CheckLure)
        end)
    end
end

function SneakAI2:CheckLure()
    self:Standby()
    self:DoFreeStyle(1280)
    self:CallDelay(3, self.ReturnToPatrol)
end

function SneakAI2:Start()
    print("\231\147\166\229\138\170\229\141\161\229\188\128\229\167\139\230\189\156\232\161\140")
    self:ThreatTask(self.Discover, self.Aware, self.ReturnToPatrol, self.OnLure)
    self:StartPatrol()
end

return SneakAI2
