require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1908004TriggerRequest = class("Q1908004TriggerRequest", GadgetActorProxy)
Q1908004TriggerRequest.defaultAlias = "Q1908004TriggerRequest"
local Q19080ClientConfig = require("Quest/Client/Q19080ClientConfig")

local this
local subIDs = Q19080ClientConfig.SubIDs
local npcs = Q19080ClientConfig.Npcs
local points = Q19080ClientConfig.Points
local datas = Q19080ClientConfig.Datas

function Q1908004TriggerRequest:OnPostDataPrepare()
    print("[MainId: 19080][Trigger: Q1908004TriggerRequest] OnPostDataPrepare")
    this = self
end

function Q1908004TriggerRequest:OnPostComponentPrepare()
    print("[MainId: 19080][Trigger: Q1908004TriggerRequest] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(5, 3, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1908004TriggerRequest:TriggerIn()
    print("[MainId: 19080][Trigger: Q1908004TriggerRequest] TriggerIn")
    actorMgr:GetActor("19080"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("19080")
        actor:CreateQuestNpcById(1908004, npcs.Coop_KaeyaData.id, 1)
        actor:RequestInteraction(npcs.Coop_KaeyaData.alias)
        this:DestroySelf()
    end, nil, nil, 0, false, true)
end

function Q1908004TriggerRequest:PreTriggerIn()
    print("[MainId: 19080][Trigger: Q1908004TriggerRequest] PreTriggerIn")
end

function Q1908004TriggerRequest:LightUpTriggerIn()
    print("[MainId: 19080][Trigger: Q1908004TriggerRequest] LightUpTriggerIn")
end

function Q1908004TriggerRequest:TriggerOut()
    print("[MainId: 19080][Trigger: Q1908004TriggerRequest] TriggerOut")
end

return Q1908004TriggerRequest
