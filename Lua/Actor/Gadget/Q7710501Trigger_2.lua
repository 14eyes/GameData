require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710501Trigger_2 = class("Q7710501Trigger_2", GadgetActorProxy)
Q7710501Trigger_2.defaultAlias = "Q7710501Trigger_2"
local Q77105ClientConfig = require("Quest/Client/Q77105ClientConfig")

local this
local subIDs = Q77105ClientConfig.SubIDs
local datas = Q77105ClientConfig.Datas
local npcs = Q77105ClientConfig.Npcs
local points = Q77105ClientConfig.Points

function Q7710501Trigger_2:OnPostDataPrepare()
    print("Q7710501Trigger_2 - OnPostDataPrepare")
    this = self
end

function Q7710501Trigger_2:OnPostComponentPrepare()
    print("Q7710501Trigger_2 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(50, 40, 40, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77105)
end

function Q7710501Trigger_2:TriggerIn()
    print("Q7710501Trigger_2 - TriggerIn")
    actorMgr:GetActor("77105"):RequestInteraction(npcs.Npc7653.alias, "", true)
    this:DestroySelf()
end

function Q7710501Trigger_2:PreTriggerIn()
    print("Q7710501Trigger_2 - PreTriggerIn")
end

function Q7710501Trigger_2:LightUpTriggerIn()
    print("Q7710501Trigger_2 - LightUpTriggerIn")
end

function Q7710501Trigger_2:TriggerOut()
    print("Q7710501Trigger_2 - TriggerOut")
end

return Q7710501Trigger_2
