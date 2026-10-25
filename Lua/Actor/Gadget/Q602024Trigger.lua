require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602024Trigger = class("Q602024Trigger", GadgetActorProxy)
Q602024Trigger.defaultAlias = "Q602024Trigger"
local Q6020ClientConfig = require("Quest/Client/Q6020ClientConfig")

local this
local subIDs = Q6020ClientConfig.SubIDs
local datas = Q6020ClientConfig.Datas
local npcs = Q6020ClientConfig.Npcs
local points = Q6020ClientConfig.Points

function Q602024Trigger:OnPostDataPrepare()
    print("Q602024Trigger - OnPostDataPrepare")
    this = self
end

function Q602024Trigger:OnPostComponentPrepare()
    print("Q602024Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(40, 80, 20, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6020)
end

function Q602024Trigger:TriggerIn()
    print("Q602024Trigger - TriggerIn")
    actorMgr:GetActor("6020"):GetQuestNpcActor(npcs.Npc1310.alias, 6020):SitOnChair(0, false)
    actorMgr:GetActor("6020"):GetQuestNpcActor(npcs.Npc1316.alias, 6020):SitOnChair(0, false)
    actorMgr:GetActor("6020"):GetQuestNpcActor(npcs.Npc1018.alias, 6020):SitOnChair(0, false)
    actorMgr:GetActor("6020"):GetQuestNpcActor(npcs.Npc1320.alias, 6020):SitOnChair(0, false)
end

function Q602024Trigger:PreTriggerIn()
    print("Q602024Trigger - PreTriggerIn")
end

function Q602024Trigger:LightUpTriggerIn()
    print("Q602024Trigger - LightUpTriggerIn")
end

function Q602024Trigger:TriggerOut()
    print("Q602024Trigger - TriggerOut")
end

return Q602024Trigger
