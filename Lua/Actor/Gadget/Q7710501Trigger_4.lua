require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710501Trigger_4 = class("Q7710501Trigger_4", GadgetActorProxy)
Q7710501Trigger_4.defaultAlias = "Q7710501Trigger_4"
local Q77105ClientConfig = require("Quest/Client/Q77105ClientConfig")

local this
local subIDs = Q77105ClientConfig.SubIDs
local datas = Q77105ClientConfig.Datas
local npcs = Q77105ClientConfig.Npcs
local points = Q77105ClientConfig.Points

function Q7710501Trigger_4:OnPostDataPrepare()
    print("Q7710501Trigger_4 - OnPostDataPrepare")
    this = self
end

function Q7710501Trigger_4:OnPostComponentPrepare()
    print("Q7710501Trigger_4 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(48, 16, 56, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77105)
end

function Q7710501Trigger_4:TriggerIn()
    print("Q7710501Trigger_4 - TriggerIn")
    actorMgr:GetActor("77105"):RequestInteraction(npcs.Npc7653.alias, "", true)
end

function Q7710501Trigger_4:PreTriggerIn()
    print("Q7710501Trigger_4 - PreTriggerIn")
end

function Q7710501Trigger_4:LightUpTriggerIn()
    print("Q7710501Trigger_4 - LightUpTriggerIn")
end

function Q7710501Trigger_4:TriggerOut()
    print("Q7710501Trigger_4 - TriggerOut")
end

return Q7710501Trigger_4
