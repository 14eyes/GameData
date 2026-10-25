require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7712811Trigger_1 = class("Q7712811Trigger_1", GadgetActorProxy)
Q7712811Trigger_1.defaultAlias = "Q7712811Trigger_1"
local Q77128ClientConfig = require("Quest/Client/Q77128ClientConfig")

local this
local subIDs = Q77128ClientConfig.SubIDs
local datas = Q77128ClientConfig.Datas
local npcs = Q77128ClientConfig.Npcs
local points = Q77128ClientConfig.Points

function Q7712811Trigger_1:OnPostDataPrepare()
    print("Q7712811Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q7712811Trigger_1:OnPostComponentPrepare()
    print("Q7712811Trigger_1 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(8, 9, 8, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77128)
end

function Q7712811Trigger_1:TriggerIn()
    print("Q7712811Trigger_1 - TriggerIn")
    actorMgr:GetActor("77128"):RequestInteraction(npcs.Npc7655.alias, "", true)
    this:DestroySelf()
end

function Q7712811Trigger_1:PreTriggerIn()
    print("Q7712811Trigger_1 - PreTriggerIn")
end

function Q7712811Trigger_1:LightUpTriggerIn()
    print("Q7712811Trigger_1 - LightUpTriggerIn")
end

function Q7712811Trigger_1:TriggerOut()
    print("Q7712811Trigger_1 - TriggerOut")
end

return Q7712811Trigger_1
