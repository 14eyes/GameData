require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602008Trigger = class("Q602008Trigger", GadgetActorProxy)
Q602008Trigger.defaultAlias = "Q602008Trigger"
local Q6020ClientConfig = require("Quest/Client/Q6020ClientConfig")

local this
local subIDs = Q6020ClientConfig.SubIDs
local datas = Q6020ClientConfig.Datas
local npcs = Q6020ClientConfig.Npcs
local points = Q6020ClientConfig.Points

function Q602008Trigger:OnPostDataPrepare()
    print("Q602008Trigger - OnPostDataPrepare")
    this = self
end

function Q602008Trigger:OnPostComponentPrepare()
    print("Q602008Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(40, 80, 20, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6020)
end

function Q602008Trigger:TriggerIn()
    print("Q602008Trigger - TriggerIn")
    actorMgr:GetActor("6020"):GetQuestNpcActor(npcs.Npc1316.alias, 6020):SitOnChair(0, false)
    actorMgr:GetActor("6020"):GetQuestNpcActor(npcs.Npc1018.alias, 6020):SitOnChair(0, false)
    actorMgr:GetActor("6020"):GetQuestNpcActor(npcs.Npc1317.alias, 6020):SitOnChair(0, false)
    actorMgr:GetActor("6020"):GetQuestNpcActor(npcs.Npc1320.alias, 6020):SitOnChair(0, false)
end

function Q602008Trigger:PreTriggerIn()
    print("Q602008Trigger - PreTriggerIn")
end

function Q602008Trigger:LightUpTriggerIn()
    print("Q602008Trigger - LightUpTriggerIn")
end

function Q602008Trigger:TriggerOut()
    print("Q602008Trigger - TriggerOut")
end

return Q602008Trigger
