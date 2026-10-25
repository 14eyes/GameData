require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local YunjinCoopSneakAI2 = class("YunjinCoopSneakAI2", NpcActorProxy)
local Q19038ClientConfig = require("Quest/Client/Q19038ClientConfig")

YunjinCoopSneakAI2.CanMove = 1
YunjinCoopSneakAI2.PatrolPosNum = 1
local routlist = {}
local str = "Q1903801_N12320_Route2"
local v = "Q1903801_N12320_Route3"
local str2 = "Q1903801_N12320_Route4_2"
local str3 = "Q1903801_N12320_Route5"
local str4 = "Q1903801_N12320_Route6"
routlist[1] = "Q1903801_N12320_Route1"
routlist[2] = str
routlist[3] = v
routlist[4] = str2
routlist[5] = str3
routlist[6] = str4
YunjinCoopSneakAI2.Routlist = routlist

function YunjinCoopSneakAI2:StartPatrol()
    print("PatrolPosNum \230\152\175 " .. self.PatrolPosNum)
    if self.uActor == nil then
        return
    end

    self.DoFreeStateTrigger(self)
    local npcAlias = self.GetNpcAlias(self)
    if self.PatrolPosNum < 5 then
        self.WalkToTask(self, sceneData:GetDummyPoint(3, self.Routlist[self.PatrolPosNum]).pos, self.Behave, nil, nil, function()
            self:SyncPos(1)
        end)
    else
        if self.PatrolPosNum == 5 then
            self.Standby(self)
            self.TurnTo(self, M.Euler2DirXZ(sceneData:GetDummyPoint(3, self.Routlist[self.PatrolPosNum - 1]).rot))
            self.DoFreeStyle(self, 1170)
        else
            if 5 < self.PatrolPosNum then
                if self.PatrolPosNum < 8 then
                    self.WalkToTask(self, sceneData:GetDummyPoint(3, self.Routlist[self.PatrolPosNum - 1]).pos, self.Behave, nil, nil, function()
                        self:SyncPos(1)
                    end)
                end
            end
        end
    end
end

function YunjinCoopSneakAI2:Behave()
    print("Do Behave " .. self.PatrolPosNum)
    if self.uActor == nil then
        return
    end

    self.PatrolPosNum = self.PatrolPosNum + 1
    self:StartPatrol()
end

function YunjinCoopSneakAI2:ReturnToPatrol()
    print("\229\155\158\229\142\187\231\187\167\231\187\173\232\181\176\232\183\175 " .. self:GetNpcAlias())
    YunjinCoopSneakAI2.CanMove = 1
    local questNpcActor = actorMgr:GetActor("19038"):GetQuestNpcActor("Npc12412")
    if YunjinCoopSneakAI2.CanMove == 1 then
        if questNpcActor.CanMove == 1 then
            self.NarratorTag = 0
            self:Standby()
            self:DoFreeStateTrigger()
            self:StartPatrol()
            local v = actorMgr:GetActor("19038"):GetQuestNpcActor("Npc12412")
            if v ~= nil then
                v:PartnerReturnToPatrol()
            end
        end
    end
end

function YunjinCoopSneakAI2:PartnerReturnToPatrol()
    print("\229\155\158\229\142\187\231\187\167\231\187\173\232\181\176\232\183\175 " .. self:GetNpcAlias())
    self:Standby()
    self:DoFreeStateTrigger()
    self:StartPatrol()
end

function YunjinCoopSneakAI2:Aware()
    print("********************Aware " .. self:GetNpcAlias())
    YunjinCoopSneakAI2.CanMove = 0
    local questNpcActor = actorMgr:GetActor("19038"):GetQuestNpcActor("Npc12412")
    if questNpcActor ~= nil then
        print("\233\128\154\231\159\165\229\141\154\230\152\147\229\129\156\228\184\139")
        questNpcActor:PartnerAware()
    end

    self:ClearFollowTask()
    self:Standby()
    self:DoFreeStateTrigger()
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetPos()
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    self:TurnTo(tbl)
    self:DoFreeStyle(1190)
end

function YunjinCoopSneakAI2:PartnerAware()
    print("\229\141\154\230\152\147\229\143\171\230\136\145\229\129\156\228\184\139")
    self:ClearFollowTask()
    self:Standby()
    self:DoFreeStateTrigger()
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetPos()
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    self:TurnTo(tbl)
    self:DoFreeStyle(1190)
end

function YunjinCoopSneakAI2:Discover()
    print("********************Discover " .. self:GetNpcAlias())
    self:Standby()
    self:DoFreeStateTrigger()
    local pos = self:GetPos()
    local npcAlias = self:GetNpcAlias()
    print(npcAlias)
    local avatarPos = actorUtils.GetAvatarPos()
    local v = self:GetPos()
    local tbl = {x = avatarPos.x - v.x, y = avatarPos.y - v.y, z = avatarPos.z - v.z}
    self:TurnTo(tbl)
    local actor = actorMgr:GetActor("19038")
    if actor ~= nil then
        print("\230\136\145\230\138\147\229\136\176\228\189\160\228\186\134\239\188\129")
        actor:RequestInteraction(npcAlias)
    end
end

function YunjinCoopSneakAI2:Start()
    self:StartPatrol()
end

return YunjinCoopSneakAI2
