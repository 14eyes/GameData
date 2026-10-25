require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1908005TriggerRequest = class("Q1908005TriggerRequest", GadgetActorProxy)
Q1908005TriggerRequest.defaultAlias = "Q1908005TriggerRequest"
local Q19080ClientConfig = require("Quest/Client/Q19080ClientConfig")

local this
local subIDs = Q19080ClientConfig.SubIDs
local npcs = Q19080ClientConfig.Npcs
local points = Q19080ClientConfig.Points
local datas = Q19080ClientConfig.Datas

function Q1908005TriggerRequest:OnPostDataPrepare()
    print("[MainId: 19080][Trigger: Q1908005TriggerRequest] OnPostDataPrepare")
    this = self
end

function Q1908005TriggerRequest:OnPostComponentPrepare()
    print("[MainId: 19080][Trigger: Q1908005TriggerRequest] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(8, 3, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1908005TriggerRequest:TriggerIn()
    print("[MainId: 19080][Trigger: Q1908005TriggerRequest] TriggerIn")
    actorMgr:GetActor("19080"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("19080")
        actor:CreateQuestNpcById(1908005, npcs.Npc2041Data.id, 2)
        actor:RequestInteraction(npcs.Npc2041Data.alias)
        this:DestroySelf()
    end, nil, nil, 0, false, true)
end

function Q1908005TriggerRequest:PreTriggerIn()
    print("[MainId: 19080][Trigger: Q1908005TriggerRequest] PreTriggerIn")
end

function Q1908005TriggerRequest:LightUpTriggerIn()
    print("[MainId: 19080][Trigger: Q1908005TriggerRequest] LightUpTriggerIn")
end

function Q1908005TriggerRequest:TriggerOut()
    print("[MainId: 19080][Trigger: Q1908005TriggerRequest] TriggerOut")
end

return Q1908005TriggerRequest
