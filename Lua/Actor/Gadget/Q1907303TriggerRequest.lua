require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1907303TriggerRequest = class("Q1907303TriggerRequest", GadgetActorProxy)
Q1907303TriggerRequest.defaultAlias = "Q1907303TriggerRequest"
local Q19073ClientConfig = require("Quest/Client/Q19073ClientConfig")

local this
local subIDs = Q19073ClientConfig.SubIDs
local npcs = Q19073ClientConfig.Npcs
local points = Q19073ClientConfig.Points
local datas = Q19073ClientConfig.Datas

function Q1907303TriggerRequest:OnPostDataPrepare()
    print("[MainId: 19073][Trigger: Q1907303TriggerRequest] OnPostDataPrepare")
    this = self
end

function Q1907303TriggerRequest:OnPostComponentPrepare()
    print("[MainId: 19073][Trigger: Q1907303TriggerRequest] OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1907303TriggerRequest:TriggerIn()
    print("[MainId: 19073][Trigger: Q1907303TriggerRequest] TriggerIn")
    actorMgr:GetActor("19073"):ShowBlackScreenWithDialogText(0.5, 1.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("19073")
        actor:CreateQuestNpcById(1907304, npcs.Coop_KaeyaData.id, 1)
        actor:RequestInteraction(npcs.Coop_KaeyaData.alias)
        this:DestroySelf()
    end, nil, nil, 0, false, true)
end

function Q1907303TriggerRequest:PreTriggerIn()
    print("[MainId: 19073][Trigger: Q1907303TriggerRequest] PreTriggerIn")
end

function Q1907303TriggerRequest:LightUpTriggerIn()
    print("[MainId: 19073][Trigger: Q1907303TriggerRequest] LightUpTriggerIn")
end

function Q1907303TriggerRequest:TriggerOut()
    print("[MainId: 19073][Trigger: Q1907303TriggerRequest] TriggerOut")
end

return Q1907303TriggerRequest
