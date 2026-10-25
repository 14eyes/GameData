require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local YLLQZYSneakAI = class("YLLQZYSneakAI", NpcActorProxy)
local datas = require("Quest/Client/Q11019ClientConfig").Datas
YLLQZYSneakAI.CanMove = 1
YLLQZYSneakAI.PatrolPosNum = 1
YLLQZYSneakAI.NarratorTag = 1
local n = 0
local v = 0
local questNpcActor
local routlist = {}
local str = "Q1101903_N12507_Route2"
local str2 = "Q1101903_N12507_Route3"
local str3 = "Q1101903_N12507_Route4"
routlist[1] = "Q1101903_N12507_Route1"
routlist[2] = str
routlist[3] = str2
routlist[4] = str3
YLLQZYSneakAI.Routlist = routlist
local routlistLinLang = {}
local str4 = "Q1101903_N2023_Route2"
local str5 = "Q1101903_N2023_Route3"
local str6 = "Q1101903_N2023_Route4"
routlistLinLang[1] = "Q1101903_N2023_Route1"
routlistLinLang[2] = str4
routlistLinLang[3] = str5
routlistLinLang[4] = str6
YLLQZYSneakAI.RoutlistLinLang = routlistLinLang

function YLLQZYSneakAI:GetCustomFreeStyleList()
    local tbl = {}
    local n = 1130
    local v = 1200
    local n2 = 0
    local n3 = 4210
    local n4 = 1170
    local n5 = 1171
    tbl[1] = 1190
    tbl[2] = n
    tbl[3] = v
    tbl[4] = n2
    tbl[5] = n3
    tbl[6] = n4
    tbl[7] = n5
    return tbl
end

function YLLQZYSneakAI:SneakSuccessFlag()
    local actor = actorMgr:GetActor("11019")
    if actor.GetQuestNpcActor ~= nil then
        print("YLLQZYSneakAI Sneak Success")
        actor:FinishQuestID(false, 1101903)
    end
end

function YLLQZYSneakAI:CheckCanMove()
    if n == 1 then
        if v == 1 then
            n = 0
            v = 0
            self:StartPatrol()
        end
    end
end

function YLLQZYSneakAI:StartPatrol()
    print("YLLQZYSneakAI StartPatrol-----")
    if self.uActor == nil then
        return
    end

    self.DoFreeStateTrigger(self)
    local npcAlias = self.GetNpcAlias(self)
    local actor = actorMgr:GetActor("11019")
    if actor.GetQuestNpcActor ~= nil then
        questNpcActor = actor:GetQuestNpcActor("Npc2023")
    end

    if self.NarratorTag == 1 then
        print("YLLQZYSneakAI NarratorTag \230\152\175 " .. self.NarratorTag)
        self.NarratorOnlyTaskByData(self, {narratorId = 110190201, pauseLen = 10, resumeLen = 5, tag = "StoryInMainPage"}, function(arg1, arg2)
            if arg2.isFinished then
                self.PatrolPosNum = 1
                self:Behave()
            else
                print("YLLQZYSneakAI \229\188\128\232\189\166\229\183\178\229\188\130\229\184\184\231\187\147\230\157\159 " .. self.NarratorTag)
            end
        end, 11019)

        if questNpcActor ~= nil then
            questNpcActor:DoFreeStyle(1190)
        end

        self.DoFreeStyle(self, 1170)
    else
        if self.NarratorTag == 2 then
            print("YLLQZYSneakAI NarratorTag \230\152\175 " .. self.NarratorTag)
            self.NarratorOnlyTaskByData(self, {narratorId = 110190202, pauseLen = 10, resumeLen = 5, tag = "StoryInMainPage"}, function(arg1, arg2)
                if arg2.isFinished then
                    self.PatrolPosNum = 2
                    self:Behave()
                else
                    print("YLLQZYSneakAI \229\188\128\232\189\166\229\183\178\229\188\130\229\184\184\231\187\147\230\157\159 " .. self.NarratorTag)
                end
            end, 11019)

            if questNpcActor ~= nil then
                questNpcActor:DoFreeStyle(1170)
            end

            self.DoFreeStyle(self, 1190)
        else
            if self.NarratorTag == 3 then
                print("YLLQZYSneakAI NarratorTag \230\152\175 " .. self.NarratorTag)
                self.NarratorOnlyTaskByData(self, {narratorId = 110190203, pauseLen = 10, resumeLen = 5, tag = "StoryInMainPage"}, function(arg1, arg2)
                    if arg2.isFinished then
                        self.PatrolPosNum = 3
                        self:Behave()
                    else
                        print("YLLQZYSneakAI \229\188\128\232\189\166\229\183\178\229\188\130\229\184\184\231\187\147\230\157\159 " .. self.NarratorTag)
                    end
                end, 11019)

                self.DoFreeStyle(self, 1130)
                if questNpcActor ~= nil then
                    questNpcActor:DoFreeStyle(1120)
                end
            else
                if self.NarratorTag == 4 then
                    print("YLLQZYSneakAI NarratorTag \230\152\175 " .. self.NarratorTag)
                    self.NarratorOnlyTaskByData(self, {narratorId = 110190204, pauseLen = 10, resumeLen = 5, tag = "StoryInMainPage"}, function(arg1, arg2)
                        if arg2.isFinished then
                            self.PatrolPosNum = 4
                            self:Behave()
                        else
                            print("YLLQZYSneakAI \229\188\128\232\189\166\229\183\178\229\188\130\229\184\184\231\187\147\230\157\159 " .. self.NarratorTag)
                        end
                    end, 11019)

                    if questNpcActor ~= nil then
                        questNpcActor:DoFreeStyle(1170)
                        questNpcActor:DoFreeStyle(1170)
                    end

                    self.DoFreeStyle(self, 1130)
                else
                    if self.NarratorTag == 5 then
                        print("YLLQZYSneakAI NarratorTag \230\152\175 " .. self.NarratorTag)
                        self.NarratorOnlyTaskByData(self, {narratorId = 110190205, pauseLen = 10, resumeLen = 5, tag = "StoryInMainPage"}, function(arg1, arg2)
                            if arg2.isFinished then
                                self:DoFreeStyle(1200)
                                if questNpcActor ~= nil then
                                    questNpcActor:DoFreeStyle(1200)
                                end

                                self:CallDelay(1, function()
                                    self.PatrolPosNum = 5
                                    self:Behave()
                                end)
                            else
                                print("YLLQZYSneakAI \229\188\128\232\189\166\229\183\178\229\188\130\229\184\184\231\187\147\230\157\159 " .. self.NarratorTag)
                            end
                        end, 11019)

                        self.DoFreeStyle(self, 4210)
                        if questNpcActor ~= nil then
                            questNpcActor:DoFreeStyle(1130)
                        end
                    else
                        self.Behave(self)
                    end
                end
            end
        end
    end
end

function YLLQZYSneakAI:Behave()
    if self.uActor == nil then
        return
    end

    local actor = actorMgr:GetActor("11019")
    if actor.GetQuestNpcActor ~= nil then
        questNpcActor = actor:GetQuestNpcActor("Npc2023")
    end

    if self.PatrolPosNum == 1 then
        print("YLLQZYSneakAI Do Behave " .. self.PatrolPosNum)
        if questNpcActor ~= nil then
            questNpcActor:WalkToRouteTask(datas.RoutePointsDataLinlang, function()
                local rot = sceneData:GetDummyPoint(3, self.RoutlistLinLang[1]).rot
                questNpcActor:SteerToTask(M.Euler2DirXZ(rot), 0.5, true, true)
                self.NarratorTag = 2
                v = 1
                self:CheckCanMove()
            end, nil, nil, nil)
        end

        self.WalkToRouteTask(self, datas.RoutePointsDataZhiYi, function()
            local rot = sceneData:GetDummyPoint(3, self.Routlist[1]).rot
            self:SteerToTask(M.Euler2DirXZ(rot), 0.5, true, true)
            n = 1
            self:CheckCanMove()
        end, nil, nil, nil)
    else
        if self.PatrolPosNum == 2 then
            print("YLLQZYSneakAI Do Behave " .. self.PatrolPosNum)
            if questNpcActor ~= nil then
                questNpcActor:WalkToRouteTask(datas.RoutePointsDataLinlang2, function()
                    local rot = sceneData:GetDummyPoint(3, self.RoutlistLinLang[2]).rot
                    questNpcActor:SteerToTask(M.Euler2DirXZ(rot), 0.5, true, true)
                    self.NarratorTag = 3
                    v = 1
                    self:CheckCanMove()
                end, nil, nil, nil)
            end

            self.WalkToRouteTask(self, datas.RoutePointsDataZhiYi2, function()
                local rot = sceneData:GetDummyPoint(3, self.Routlist[2]).rot
                self:SteerToTask(M.Euler2DirXZ(rot), 0.5, true, true)
                n = 1
                self:CheckCanMove()
            end, nil, nil, nil)
        else
            if self.PatrolPosNum == 3 then
                print("YLLQZYSneakAI Do Behave " .. self.PatrolPosNum)
                self.NarratorTag = 4
                self.StartPatrol(self)
            else
                if self.PatrolPosNum == 4 then
                    print("YLLQZYSneakAI Do Behave " .. self.PatrolPosNum)
                    if questNpcActor ~= nil then
                        questNpcActor:WalkToRouteTask(datas.RoutePointsDataLinlang3, function()
                            local rot = sceneData:GetDummyPoint(3, self.RoutlistLinLang[3]).rot
                            questNpcActor:SteerToTask(M.Euler2DirXZ(rot), 0.5, true, true)
                            self.NarratorTag = 5
                            v = 1
                            self:CheckCanMove()
                        end, nil, nil, nil)
                    end

                    self.WalkToRouteTask(self, datas.RoutePointsDataZhiYi3, function()
                        local rot = sceneData:GetDummyPoint(3, self.Routlist[3]).rot
                        self:SteerToTask(M.Euler2DirXZ(rot), 0.5, true, true)
                        n = 1
                        self:CheckCanMove()
                    end, nil, nil, nil)
                else
                    if self.PatrolPosNum == 5 then
                        if self.NarratorTag == 5 then
                            print("YLLQZYSneakAI Do Behave " .. self.PatrolPosNum)
                            self.NarratorTag = 0
                            self.PatrolPosNum = 0
                            if questNpcActor ~= nil then
                                questNpcActor:WalkToTask(sceneData:GetDummyPoint(3, self.RoutlistLinLang[4]).pos, function() end, nil, nil, nil)
                            end

                            self.WalkToTask(self, sceneData:GetDummyPoint(3, self.Routlist[4]).pos, function()
                                self:SneakSuccessFlag()
                            end, nil, nil, nil)
                        end
                    else
                        self.CallDelay(self, 1, function()
                            self:StartPatrol()
                        end)
                    end
                end
            end
        end
    end
end

function YLLQZYSneakAI:ReturnToPatrol()
    print("YLLQZYSneakAI \229\155\158\229\142\187\231\187\167\231\187\173\232\181\176\232\183\175 " .. self:GetNpcAlias())
end

function YLLQZYSneakAI:Aware()
    print("YLLQZYSneakAI Aware " .. self:GetNpcAlias())
    self:ShowTextMapWithParam("QUEST_Black_Q110190501")
end

function YLLQZYSneakAI:Discover()
    print("YLLQZYSneakAI Discover " .. self.GetNpcAlias(self))
    local questNpcActor
    self.PatrolPosNum = 0
    self.NarratorTag = 0
    self.UnCallFunc(self, self.StartPatrol)
    self.UnCallFunc(self, self.Behave)
    self.UnCallFunc(self, self.CheckCanMove)
    local actor = actorMgr:GetActor("11019")
    if actor.GetQuestNpcActor ~= nil then
        questNpcActor = actor:GetQuestNpcActor("Npc2023")
    end

    globalActor:StopLocalAvatar()
    actor:EnablePlayerInput(false)
    if questNpcActor ~= nil then
        questNpcActor:Standby()
        questNpcActor:DoFreeStateTrigger()
    end

    self.Standby(self)
    self.DoFreeStateTrigger(self)
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self.GetPos(self)
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    self.SteerToAutonomyTask(self, tbl, 1, true, true)
    self.CallDelay(self, 1, function()
        self:DoFreeStyle(1200)
    end)

    self.NarratorOnlyTaskByData(self, {narratorId = 1101904, pauseLen = 10, resumeLen = 5, tag = "StoryInMainPage"}, function()
        actorUtils.FinishQuestID(true, 1101903)
        actorMgr:GetActor("11019"):EnablePlayerInput(true)
    end, 11019)

    self.CallDelay(self, 5, function()
        actorUtils.FinishQuestID(true, 1101903)
        actorMgr:GetActor("11019"):EnablePlayerInput(true)
    end)
end

function YLLQZYSneakAI:Start()
    print("YLLQZYSneakAI Start")
    self:ThreatTask(self.Discover, self.Aware, self.ReturnToPatrol)
    self:StartPatrol()
end

return YLLQZYSneakAI
