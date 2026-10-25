require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q500109Wave = class("Q500109Wave", GadgetActorProxy)
Q500109Wave.defaultAlias = "Q500109Wave"
local Q5001ClientConfig = require("Quest/Client/Q5001ClientConfig")

local this
local subIDs = Q5001ClientConfig.SubIDs
local datas = Q5001ClientConfig.Datas
local npcs = Q5001ClientConfig.Npcs
local points = Q5001ClientConfig.Points

function Q500109Wave:OnPostDataPrepare()
    print("Q500109Wave - OnPostDataPrepare")
    this = self
end

function Q500109Wave:OnPostComponentPrepare()
    print("Q500109Wave - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5001)
end

function Q500109Wave:TriggerIn()
    print("Q500109Wave - TriggerIn")
    if actorUtils.IsMalePlayer() then
        local avatarPos = actorUtils.GetAvatarPos()
        actorMgr:GetActor("5001"):GetQuestNpcActor(npcs.Npc1025.alias, 5001):TurnToAvatar()
        actorMgr:GetActor("5001"):GetQuestNpcActor(npcs.Npc1025.alias, 5001):LookAt(avatarPos)
        actorMgr:GetActor("5001"):GetQuestNpcActor(npcs.Npc1025.alias, 5001):DoFreeStyle(1260, true, nil, true, true, false, false)
        actorMgr:GetActor("5001"):GetQuestNpcActor(npcs.Npc1025.alias, 5001):SetPlayerNpcEnergy()
    else
        local avatarPos = actorUtils.GetAvatarPos()
        actorMgr:GetActor("5001"):GetQuestNpcActor(npcs.Npc1026.alias, 5001):TurnToAvatar()
        actorMgr:GetActor("5001"):GetQuestNpcActor(npcs.Npc1026.alias, 5001):LookAt(avatarPos)
        actorMgr:GetActor("5001"):GetQuestNpcActor(npcs.Npc1026.alias, 5001):DoFreeStyle(1260, true, nil, true, true, false, false)
        actorMgr:GetActor("5001"):GetQuestNpcActor(npcs.Npc1026.alias, 5001):SetPlayerNpcEnergy()
    end

    actorMgr:GetActor("5001"):GetQuestNpcActor(npcs.Paimon.alias, 5001):TurnToAvatar()
    local avatarPos = actorUtils.GetAvatarPos()
    actorMgr:GetActor("5001"):GetQuestNpcActor(npcs.Paimon.alias, 5001):LookAt(avatarPos)
    actorMgr:GetActor("5001"):GetQuestNpcActor(npcs.Paimon.alias, 5001):DoFreeStyle(1250, true, nil, true, true, false, false)
    this:DestroySelf()
end

function Q500109Wave:PreTriggerIn()
    print("Q500109Wave - PreTriggerIn")
end

function Q500109Wave:LightUpTriggerIn()
    print("Q500109Wave - LightUpTriggerIn")
end

function Q500109Wave:TriggerOut()
    print("Q500109Wave - TriggerOut")
end

return Q500109Wave
