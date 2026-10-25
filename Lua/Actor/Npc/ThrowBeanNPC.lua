require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local SneakAI = class("SneakAI", NpcActorProxy)
local Q12025ClientConfig = require("Quest/Client/Q12025ClientConfig")

local npc12315Data = Q12025ClientConfig.Npc12315Data
local datas = Q12025ClientConfig.Datas
local gadgets = Q12025ClientConfig.Gadgets
local pos = sceneData:GetDummyPoint(3, "Q1202503_failtotrans").pos
SneakAI.defaultAlias = "SneakAI"
SneakAI.PatrolPosNum = 1
SneakAI.PatrolPos = datas.RoutePointsData
SneakAI.PatrolDir = datas.RoutePointsDir
SneakAI.PatrolNext = 1
SneakAI.DiscoverFlag = 0

function SneakAI:GetCustomFreeStyleList()
    local tbl = {}
    local n = 1120
    local v = 1190
    local n2 = 1280
    local n3 = 1060
    local n4 = 1230
    local n5 = 0
    local n6 = 1
    local n7 = 2
    local n8 = 3
    local n9 = 1070
    local n10 = 1090
    local n11 = 1141
    local n12 = 1110
    tbl[1] = 1170
    tbl[2] = n
    tbl[3] = v
    tbl[4] = n2
    tbl[5] = n3
    tbl[6] = n4
    tbl[7] = n5
    tbl[8] = n6
    tbl[9] = n7
    tbl[10] = n8
    tbl[11] = n9
    tbl[12] = n10
    tbl[13] = n11
    tbl[14] = n12
    return tbl
end

function SneakAI:StartPatrol()
    if self.uActor == nil then
        return
    end

    if self.DiscoverFlag == 1 then
        if self.PatrolPosNum == 2 then
            self:WalkToTask(self.PatrolPos[self.PatrolPosNum], self.BehaveToSquat)
            print("\232\183\145\229\136\176\229\144\142\232\185\178\228\184\139", self.PatrolPosNum)
        else
            if self.PatrolPosNum ~= 1 then
                if self.PatrolPosNum ~= 3 then
                    if self.PatrolPosNum ~= 4 then
                        goto lbl_41
                    end
                end
            end

            self:WalkToTask(self.PatrolPos[self.PatrolPosNum], self.BehaveToThink)
            print("\232\183\145\229\136\176\229\144\142\232\167\130\229\175\159", self.PatrolPosNum)
        end
    end

    ::lbl_41::
end

function SneakAI:Behave12026()
    self:StartPatrol()
end

function SneakAI:BehaveToThink()
    self:Standby()
    self:CallDelay(1, function(arg1)
        arg1:DoFreeStyle(1190)
        print("\232\185\178\228\184\139", arg1.PatrolPosNum)
        arg1:CallDelay(4, function(arg1)
            if arg1.DiscoverFlag == 1 then
                arg1.PatrolPosNum = arg1.PatrolPosNum + 1
                if arg1.PatrolPosNum == 5 then
                    arg1.PatrolPosNum = 1
                end

                arg1:DoFreeStateTrigger()
                print("\231\171\153\232\181\183", arg1.PatrolPosNum)
                arg1:CallDelay(1, function(arg1)
                    if arg1.DiscoverFlag == 1 then
                        arg1:Behave12026()
                    end
                end)
            end
        end)
    end)
end

function SneakAI:BehaveToSquat()
    self:Standby()
    self:CallDelay(1, function(arg1)
        arg1:DoFreeStyle(1280)
        print("\232\185\178\228\184\139", arg1.PatrolPosNum)
        arg1:CallDelay(4, function(arg1)
            if arg1.DiscoverFlag == 1 then
                arg1.PatrolPosNum = arg1.PatrolPosNum + 1
                if arg1.PatrolPosNum == 5 then
                    arg1.PatrolPosNum = 1
                end

                arg1:DoFreeStateTrigger()
                print("\231\171\153\232\181\183", arg1.PatrolPosNum)
                arg1:CallDelay(1, function(arg1)
                    if arg1.DiscoverFlag == 1 then
                        arg1:Behave12026()
                    end
                end)
            end
        end)
    end)
end

function SneakAI:Behave()
    print("Now DoFreeStyle \231\171\153\228\189\143", self.PatrolPosNum)
    self:Standby()
    self:CallDelay(2, function(arg1)
        arg1:DoFreeStyle(1280)
        arg1:CallDelay(4, function(arg1)
            arg1.PatrolPosNum = arg1.PatrolPosNum + 1
            if arg1.PatrolPosNum == 5 then
                arg1.PatrolPosNum = 1
            end

            print("\231\130\185\230\149\176\229\162\158\233\135\143\239\188\140\228\184\139\228\184\128\228\184\170\231\130\185", arg1.PatrolPosNum)
            arg1:DoFreeStateTrigger()
            print("i am free \232\132\177\231\166\187\232\185\178\231\157\128\231\138\182\230\128\129", arg1.PatrolPosNum)
            arg1:CallDelay(2, function(arg1)
                print("why i am turning? \229\135\134\229\164\135\232\183\145\229\144\145\228\184\139\228\184\128\228\184\170\231\130\185", arg1.PatrolPosNum)
                arg1:StartPatrol()
            end)
        end)
    end)
end

function SneakAI:ReturnToPatrol()
    print("***********teturn", self.PatrolPosNum)
    print("***********teturn flag", self.DiscoverFlag)
    self:DoFreeStateTrigger()
    if self.DiscoverFlag == 1 then
        print("***********teturn success", self.PatrolPosNum)
        self:WalkToTask(self.PatrolPos[self.PatrolPosNum], self.StartPatrol)
    end
end

function SneakAI:Aware()
    self.UnCallFunc(self, self.BehaveToThink)
    self.UnCallFunc(self, self.BehaveToSquat)
    self.UnCallFunc(self, self.CallDelay)
    self.UnCallFunc(self, self.Behave12026)
    self.ClearFollowTask(self)
    self.Standby(self)
    self.DoFreeStateTrigger(self)
    local pos = self.GetPos(self)
    pos.y = pos.y + 1
    local avatarPos = actorUtils.GetAvatarPos()
    local v = self.GetPos(self)
    local dist = M.Dist(v, avatarPos)
    local tbl = {x = avatarPos.x - v.x, y = avatarPos.y - v.y, z = avatarPos.z - v.z}
    self.TurnTo(self, tbl)
    print("now the len is", dist)
    self.DoFreeStyle(self, 1060)
    print("start to go ", dist)
    self.CallDelay(self, 1, function()
        self:ClearFollowTask()
        self:Standby()
        self:DoFreeStyle(1190)
    end)
end

function SneakAI:CheckLure()
    print("********************CheckLure")
    self:UnCallFunc(self.BehaveToThink)
    self:UnCallFunc(self.BehaveToSquat)
    self:Standby()
    self:DoFreeStyle(1110)
    self:CallDelay(3, self.ReturnToPatrol)
end

function SneakAI:OnLure(arg1, arg2)
    self:UnCallFunc(self.BehaveToThink)
    self:UnCallFunc(self.BehaveToSquat)
    print("********************MoveToLure")
    local pos = self:GetPos()
    local tbl = {x = arg2.soundPos.x - pos.x, y = arg2.soundPos.y - pos.y, z = arg2.soundPos.z - pos.z}
    print("TurnDir")
    print(tbl.x)
    self:TurnTo(tbl)
    self:DoFreeStyle(1090)
    self:CallDelay(2, function(arg1, arg2_2)
        arg1:Standby()
        arg1:DoFreeStateTrigger()
        arg1:WalkToTask(arg2.soundPos, arg1.CheckLure)
    end)
end

function SneakAI:Discover()
    print("********************Discover")
    actorMgr:GetActor(Q12025ClientConfig.ActorAlias):UnSpawn(gadgets.Gadget70290185Data.alias)
    self.UnCallFunc(self, self.Aware)
    self.ClearFollowTask(self)
    self.Standby(self)
    self.DoFreeStateTrigger(self)
    self.DiscoverFlag = 2
    print("FLAG CHANGE", self.DiscoverFlag)
    self.ClearNarratorTask(self)
    self.StopNarrator(self)
    local pos = self.GetPos(self)
    pos.y = pos.y + 1
    local avatarPos = actorUtils.GetAvatarPos()
    local v = self.GetPos(self)
    local dist = M.Dist(v, avatarPos)
    local tbl = {x = avatarPos.x - v.x, y = avatarPos.y - v.y, z = avatarPos.z - v.z}
    self.TurnTo(self, tbl)
    self.CallDelay(self, 0.5, function()
        self:NarratorOnlyTaskByData(datas.kaiche1202509, nil, 12025)
    end)

    self.DoFreeStyle(self, 1141)
    print("angry body")
    local pos2 = self.GetPos(self)
    self.EnterSceneLookCamera(self, pos2, 0, 5, true, true)
    globalActor:EnablePlayerInput(false)
    self.CallDelay(self, 7, function()
        globalActor:EnablePlayerInput(true)
        local actor = actorMgr:GetActor(Q12025ClientConfig.ActorAlias)
        actor.ActorDestroy(actor, "Q1202503TriggertoFail")
        actor.TransmitPlayerWithTextByQuestId(actor, 1202503, 1202503, {"QUEST_Black_Q1202619"}, 4)
        self:CallDelay(1, function()
            print("Sneak Failed OOOMG")
            actor:FinishQuestID(true, 1202503)
            self.DiscoverFlag = 1
            print("FLAG reset", self.DiscoverFlag)
        end)
    end)
end

function SneakAI:Start()
    self:ThreatTask(self.Discover, self.Aware, self.ReturnToPatrol, self.OnLure)
    self.DiscoverFlag = 1
    print("FLAG start", self.DiscoverFlag)
    self:StartPatrol()
    print("SneakStart")
end

return SneakAI
