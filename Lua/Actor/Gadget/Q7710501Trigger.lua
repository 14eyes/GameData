require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710501Trigger = class("Q7710501Trigger", GadgetActorProxy)
Q7710501Trigger.defaultAlias = "Q7710501Trigger"
local Q77105ClientConfig = require("Quest/Client/Q77105ClientConfig")

local this
local subIDs = Q77105ClientConfig.SubIDs
local datas = Q77105ClientConfig.Datas
local npcs = Q77105ClientConfig.Npcs
local points = Q77105ClientConfig.Points

function Q7710501Trigger:OnPostDataPrepare()
    print("Q7710501Trigger - OnPostDataPrepare")
    this = self
end

function Q7710501Trigger:OnPostComponentPrepare()
    print("Q7710501Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(72, 70, 65, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77105)
end

function Q7710501Trigger:TriggerIn()
    print("Q7710501Trigger - TriggerIn")
    actorMgr:GetActor("77105"):RequestInteraction(npcs.Npc7653.alias, "", true)
end

function Q7710501Trigger:PreTriggerIn()
    print("Q7710501Trigger - PreTriggerIn")
end

function Q7710501Trigger:LightUpTriggerIn()
    print("Q7710501Trigger - LightUpTriggerIn")
end

function Q7710501Trigger:TriggerOut()
    print("Q7710501Trigger - TriggerOut")
end

return Q7710501Trigger
