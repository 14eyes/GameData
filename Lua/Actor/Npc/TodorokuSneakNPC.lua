require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local SneakAITodoroku = class("SneakAITodoroku", NpcActorProxy)
local Q19055ClientConfig = require("Quest/Client/Q19055ClientConfig")

SneakAITodoroku.defaultAlias = "SneakAITodoroku"
SneakAITodoroku.PatrolPosNum = 5
SneakAITodoroku.PatrolNext = 1
SneakAITodoroku.Canmove = 1
local routlist = {}
local str = "Q1905503_N12650_Route2"
local v = "Q1905503_N12650_Route3"
local str2 = "Q1905503_N12650_Route4"
local str3 = "Q1905503_N12650_Route5"
routlist[1] = "Q1905503_N12650_Route1"
routlist[2] = str
routlist[3] = v
routlist[4] = str2
routlist[5] = str3
SneakAITodoroku.Routlist = routlist

function SneakAITodoroku:StartPatrol()
    print("PatrolNext=" .. self.PatrolNext)
    if self.uActor == nil then
        return
    end

    if self.PatrolNext > self.PatrolPosNum then
        local actor = actorMgr:GetActor(Q19055ClientConfig.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 1905503)
        end
    end

    if self.PatrolNext ~= 1 then
        if self.PatrolNext ~= 2 then
            if self.PatrolNext ~= 3 then
                if self.PatrolNext ~= 4 then
                    if self.PatrolNext ~= 5 then
                        goto lbl_97
                    end
                end
            end
        end
    end

    print("\231\130\185\231\154\132\229\186\143\229\136\151\229\143\183\230\152\175\239\188\154 " .. self.PatrolNext)
    print("\231\130\185\228\189\141\229\144\141\231\167\176\230\152\175\239\188\154 " .. self.Routlist[self.PatrolNext])
    print("\229\133\183\228\189\147\229\157\144\230\160\135\228\184\186\239\188\154X=" .. sceneData:GetDummyPoint(3, self.Routlist[self.PatrolNext]).pos.x .. " Y=" .. sceneData:GetDummyPoint(3, self.Routlist[self.PatrolNext]).pos.y .. " Z=" .. sceneData:GetDummyPoint(3, self.Routlist[self.PatrolNext]).pos.z)
    self.WalkToTask(self, sceneData:GetDummyPoint(3, self.Routlist[self.PatrolNext]).pos, self.Behave, nil, nil, function()
        self:SyncPos(2)
    end)

    ::lbl_97::
end

function SneakAITodoroku:Behave()
    print("\230\137\167\232\161\140behave" .. self.PatrolNext)
    if self.uActor == nil then
        return
    end

    if self.PatrolNext ~= 1 then
        if self.PatrolNext ~= 2 then
            if self.PatrolNext ~= 3 then
                if self.PatrolNext ~= 4 then
                    if self.PatrolNext ~= 5 then
                        goto lbl_30
                    end
                end
            end
        end
    end

    self.PatrolNext = self.PatrolNext + 1
    self:StartPatrol()
    ::lbl_30::
end

function SneakAITodoroku:ReturnToPatrol()
    print("unaware\231\187\167\231\187\173\232\181\176\232\183\175" .. self:GetNpcAlias())
    SneakAITodoroku.Canmove = 1
    local questNpcActor = actorMgr:GetActor("19055"):GetQuestNpcActor("Npc12651")
    if SneakAITodoroku.Canmove == 1 then
        if questNpcActor.Canmove == 1 then
            self:Standby()
            self:DoFreeStateTrigger()
            self:StartPatrol()
            local v = actorMgr:GetActor("19055"):GetQuestNpcActor("Npc12651")
            if v ~= nil then
                v:PartnerReturnToPatrol()
            end
        end
    end
end

function SneakAITodoroku:PartnerReturnToPatrol()
    print("unaware\231\187\167\231\187\173\232\181\176\232\183\175" .. self:GetNpcAlias())
    self:Standby()
    self:DoFreeStateTrigger()
    self:StartPatrol()
end

function SneakAITodoroku:Aware()
    print("\229\143\145\231\142\176\228\189\160\228\186\134\239\188\129" .. self:GetNpcAlias())
    SneakAITodoroku.Canmove = 0
    local questNpcActor = actorMgr:GetActor("19055"):GetQuestNpcActor("Npc12651")
    if questNpcActor ~= nil then
        print("\233\128\154\231\159\165\229\190\183\231\148\176\229\129\156\228\184\139")
        questNpcActor:PartnerAware()
    end

    self:ClearFollowTask()
    self:Standby()
    self:DoFreeStateTrigger()
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetPos()
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    self:TurnTo(tbl)
    self:DoFreeStyle(1050, true, nil, true, true, false)
end

function SneakAITodoroku:PartnerAware()
    print("\229\190\183\231\148\176\229\143\171\230\136\145\229\129\156\228\184\139")
    self:ClearFollowTask()
    self:Standby()
    self:DoFreeStateTrigger()
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetPos()
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    self:TurnTo(tbl)
end

function SneakAITodoroku:Discover()
    print("\230\138\147\229\136\176\228\189\160\228\186\134\239\188\129" .. self:GetNpcAlias())
    self:Standby()
    self:DoFreeStateTrigger()
    self:ClearNarratorTask()
    self:StopNarrator()
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetPos()
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    self:TurnTo(tbl)
    self:DoFreeStyle(1141, true, nil, true, true, false)
    local actor = actorMgr:GetActor(Q19055ClientConfig.ActorAlias)
    if actor ~= nil then
        actor.NarratorOnlyTaskByData(actor, Q19055ClientConfig.Datas.NarratorAwareFail, function()
            actor:FinishQuestID(true, 1905503)
        end, 19055)
    end
end

function SneakAITodoroku:Start()
    self:ThreatTask(self.Discover, self.Aware, self.ReturnToPatrol)
    self:StartPatrol()
end

return SneakAITodoroku
