require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4018410Trigger = class("Q4018410Trigger", GadgetActorProxy)
Q4018410Trigger.defaultAlias = "Q4018410Trigger"
local Q40184ClientConfig = require("Quest/Client/Q40184ClientConfig")

local this
local subIDs = Q40184ClientConfig.SubIDs
local datas = Q40184ClientConfig.Datas
local npcs = Q40184ClientConfig.Npcs
local points = Q40184ClientConfig.Points

function Q4018410Trigger:OnPostDataPrepare()
    print("Q4018410Trigger - OnPostDataPrepare")
    this = self
end

function Q4018410Trigger:OnPostComponentPrepare()
    print("Q4018410Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(6, 4, 4, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40184)
end

function Q4018410Trigger:TriggerIn()
    print("Q4018410Trigger - TriggerIn")
    actorMgr:GetActor("40184"):CreateQuestNpcById(4018410, npcs.Npc15135.id, 0, false, 0)
    actorMgr:GetActor("40184"):RequestInteraction(npcs.Npc15135.alias, "", true)
    this:DestroySelf()
end

function Q4018410Trigger:PreTriggerIn()
    print("Q4018410Trigger - PreTriggerIn")
end

function Q4018410Trigger:LightUpTriggerIn()
    print("Q4018410Trigger - LightUpTriggerIn")
end

function Q4018410Trigger:TriggerOut()
    print("Q4018410Trigger - TriggerOut")
end

return Q4018410Trigger
