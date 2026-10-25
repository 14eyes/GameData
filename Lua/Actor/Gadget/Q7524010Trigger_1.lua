require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7524010Trigger_1 = class("Q7524010Trigger_1", GadgetActorProxy)
Q7524010Trigger_1.defaultAlias = "Q7524010Trigger_1"
local Q75240ClientConfig = require("Quest/Client/Q75240ClientConfig")

local this
local subIDs = Q75240ClientConfig.SubIDs
local datas = Q75240ClientConfig.Datas
local npcs = Q75240ClientConfig.Npcs
local points = Q75240ClientConfig.Points

function Q7524010Trigger_1:OnPostDataPrepare()
    print("Q7524010Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q7524010Trigger_1:OnPostComponentPrepare()
    print("Q7524010Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75240)
end

function Q7524010Trigger_1:TriggerIn()
    print("Q7524010Trigger_1 - TriggerIn")
    actorMgr:GetActor("75240"):ActionSafeCall(function(arg1)
        actorMgr:GetActor("75240"):GetQuestNpcActor(npcs.Npc21961.alias, 75240):RequestInteraction(npcs.Npc21961.alias, "", true)
    end)

    this:DestroySelf()
end

function Q7524010Trigger_1:PreTriggerIn()
    print("Q7524010Trigger_1 - PreTriggerIn")
end

function Q7524010Trigger_1:LightUpTriggerIn()
    print("Q7524010Trigger_1 - LightUpTriggerIn")
end

function Q7524010Trigger_1:TriggerOut()
    print("Q7524010Trigger_1 - TriggerOut")
end

return Q7524010Trigger_1
