require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local SneakAI = class("SneakAI", NpcActorProxy)
local Q12034ClientConfig = require("Quest/Client/Q12034ClientConfig")

SneakAI.defaultAlias = "SneakAI"
SneakAI.PatrolPosNum = 9
SneakAI.PatrolNext = 2
SneakAI.NarratorTag1 = 0
SneakAI.NarratorTag2 = 0
SneakAI.NarratorTag3 = 0
SneakAI.NarratorTag4 = 0
local routlist = {}
local str = "Q1203413_N12521_Route2"
local v = "Q1203413_N12521_Route3"
local str2 = "Q1203413_N12521_Route4"
local str3 = "Q1203413_N12521_Route5"
local str4 = "Q1203413_N12521_Route6"
local str5 = "Q1203413_N12521_Route7"
local str6 = "Q1203413_N12521_Route8"
local str7 = "Q1203413_N12521_Route9"
routlist[1] = "Q1203413_N12521_Route1"
routlist[2] = str
routlist[3] = v
routlist[4] = str2
routlist[5] = str3
routlist[6] = str4
routlist[7] = str5
routlist[8] = str6
routlist[9] = str7
SneakAI.Routlist = routlist

function SneakAI:StartPatrol()
    print("PatrolNext=" .. self.PatrolNext)
    if self.uActor == nil then
        return
    end

    if self.PatrolNext > self.PatrolPosNum then
        local actor = actorMgr:GetActor(Q12034ClientConfig.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 1203413)
        end
    end

    if self.PatrolNext == 5 then
        self.RunToTask(self, sceneData:GetDummyPoint(3, self.Routlist[self.PatrolNext]).pos, self.Behave, nil, nil, function()
            self:SyncPos(2)
        end)
    else
        if self.PatrolNext == 8 then
            self.NarratorTag1 = self.NarratorTag1 + 1
            self.WalkToTask(self, sceneData:GetDummyPoint(3, self.Routlist[self.PatrolNext]).pos, self.Behave, nil, nil, function()
                self:SyncPos(1)
            end)

            if self.NarratorTag1 == 1 then
                local actor = actorMgr:GetActor(Q12034ClientConfig.ActorAlias)
                if actor ~= nil then
                    actor:NarratorOnlyTaskByData(Q12034ClientConfig.Datas.Narrator4, 12034)
                end
            end
        else
            if self.PatrolNext == 9 then
                self.NarratorTag2 = self.NarratorTag2 + 1
                self.RunToTask(self, sceneData:GetDummyPoint(3, self.Routlist[self.PatrolNext]).pos, self.Behave, nil, nil, function()
                    self:SyncPos(2)
                end)

                if self.NarratorTag2 == 1 then
                    local actor = actorMgr:GetActor(Q12034ClientConfig.ActorAlias)
                    if actor ~= nil then
                        actor:NarratorOnlyTaskByData(Q12034ClientConfig.Datas.Narrator5, 12034)
                    end
                end
            else
                if self.PatrolNext ~= 2 then
                    if self.PatrolNext ~= 3 then
                        if self.PatrolNext ~= 4 then
                            if self.PatrolNext ~= 6 then
                                if self.PatrolNext ~= 7 then
                                    goto lbl_182
                                end
                            end
                        end
                    end
                end

                print("\231\130\185\231\154\132\229\186\143\229\136\151\229\143\183\230\152\175\239\188\154 " .. self.PatrolNext)
                print("\231\130\185\228\189\141\229\144\141\231\167\176\230\152\175\239\188\154 " .. self.Routlist[self.PatrolNext])
                print("\229\133\183\228\189\147\229\157\144\230\160\135\228\184\186\239\188\154X=" .. sceneData:GetDummyPoint(3, self.Routlist[self.PatrolNext]).pos.x .. " Y=" .. sceneData:GetDummyPoint(3, self.Routlist[self.PatrolNext]).pos.y .. " Z=" .. sceneData:GetDummyPoint(3, self.Routlist[self.PatrolNext]).pos.z)
                self.WalkToTask(self, sceneData:GetDummyPoint(3, self.Routlist[self.PatrolNext]).pos, self.Behave, nil, nil, function()
                    self:SyncPos(1)
                end)
            end
        end
    end

    ::lbl_182::
end

function SneakAI:Behave()
    print("\230\137\167\232\161\140behave" .. self.PatrolNext)
    if self.uActor == nil then
        return
    end

    if self.PatrolNext == 2 then
        self:Standby()
        self:DoFreeStyle(1190)
        self.PatrolNext = self.PatrolNext + 1
        self:StartPatrol()
    else
        local actor
        if self.PatrolNext == 3 then
            self:Standby()
            self:DoFreeStateTrigger()
            self:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q1203413_N12521_Route3").rot))
            self:DoFreeStyle(1120)
            self.NarratorTag3 = self.NarratorTag3 + 1
            if self.NarratorTag3 == 1 then
                actor = actorMgr:GetActor(Q12034ClientConfig.ActorAlias)
                if actor ~= nil then
                    actor.NarratorOnlyTaskByData(actor, Q12034ClientConfig.Datas.Narrator2, function(arg1, arg2)
                        if arg2 ~= nil then
                            print("task isFinished=" .. tostring(arg2.isFinished))
                            if arg2.isFinished then
                                local questNpcActor = actor:GetQuestNpcActor("Npc12521")
                                questNpcActor:DoFreeStateTrigger()
                                questNpcActor.PatrolNext = questNpcActor.PatrolNext + 1
                                questNpcActor:StartPatrol()
                                print("task\230\173\163\229\184\184\229\174\140\230\136\144\229\155\158\232\176\131")
                            else
                                print("task\229\188\130\229\184\184\231\187\147\230\157\159\229\155\158\232\176\131")
                            end
                        else
                            print("task is nil")
                        end
                    end, 12034)
                end
            end
        else
            if self.PatrolNext == 5 then
                self:Standby()
                self:DoFreeStyle(1190)
                self.PatrolNext = self.PatrolNext + 1
                self:StartPatrol()
            else
                if self.PatrolNext == 6 then
                    self:Standby()
                    self:DoFreeStateTrigger()
                    self:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q1203413_N12521_Route6").rot))
                    self:DoFreeStyle(1280)
                    self.NarratorTag4 = self.NarratorTag4 + 1
                    if self.NarratorTag4 == 1 then
                        actor = actorMgr:GetActor(Q12034ClientConfig.ActorAlias)
                        if actor ~= nil then
                            actor.NarratorOnlyTaskByData(actor, Q12034ClientConfig.Datas.Narrator3, function(arg1, arg2)
                                if arg2 ~= nil then
                                    if arg2.isFinished then
                                        local questNpcActor = actor:GetQuestNpcActor("Npc12521")
                                        questNpcActor:DoFreeStateTrigger()
                                        questNpcActor.PatrolNext = questNpcActor.PatrolNext + 1
                                        questNpcActor:StartPatrol()
                                        print("task\230\173\163\229\184\184\229\174\140\230\136\144\229\155\158\232\176\131")
                                    else
                                        print("task\229\188\130\229\184\184\231\187\147\230\157\159\229\155\158\232\176\131")
                                    end
                                else
                                    print("task is nil")
                                end
                            end, 12034)
                        end
                    end
                else
                    self.PatrolNext = self.PatrolNext + 1
                    self:StartPatrol()
                end
            end
        end
    end
end

function SneakAI:ReturnToPatrol()
    print("\230\186\156\228\186\134\230\186\156\228\186\134")
    self:StartPatrol()
end

function SneakAI:Aware()
    print("\229\143\145\231\142\176\228\189\160\228\186\134\239\188\129")
    self:ClearFollowTask()
    self:Standby()
    self:DoFreeStateTrigger()
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetPos()
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    self:TurnTo(tbl)
    self:DoFreeStyle(1050)
end

function SneakAI:Discover()
    print("\230\138\147\229\136\176\228\189\160\228\186\134\239\188\129")
    self:Standby()
    self:DoFreeStateTrigger()
    self:ClearNarratorTask()
    self:StopNarrator()
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetPos()
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    self:EnterSceneLookCamera(pos, 0, 4, true, true)
    self:TurnTo(tbl)
    self:DoFreeStyle(1141)
    local actor = actorMgr:GetActor(Q12034ClientConfig.ActorAlias)
    if actor ~= nil then
        actor.NarratorOnlyTaskByData(actor, Q12034ClientConfig.Datas.NarratorFailAware, function()
            actor:FinishQuestID(true, 1203413)
            actor:ShowBlackScreen(0.5, 0.5, 0.5, function()
                actor:DestroyQuestNpcActor("Npc12521")
            end, nil, nil, "", false, true)
        end, 12034)
    end
end

function SneakAI:Start()
    self:ThreatTask(self.Discover, self.Aware, self.ReturnToPatrol)
    self:StartPatrol()
end

return SneakAI
