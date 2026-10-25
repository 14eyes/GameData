require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74091Trigger1 = class("Q74091Trigger1", GadgetActorProxy)
Q74091Trigger1.defaultAlias = "Q74091Trigger1"
local Q74091ClientConfig = require("Quest/Client/Q74091ClientConfig")

local this
local subIDs = Q74091ClientConfig.SubIDs
local npcs = Q74091ClientConfig.Npcs
local points = Q74091ClientConfig.Points
local datas = Q74091ClientConfig.Datas

function Q74091Trigger1:OnPostDataPrepare()
    print("[MainId: 74091][Trigger: Q74091Trigger1] OnPostDataPrepare")
    this = self
end

function Q74091Trigger1:OnPostComponentPrepare()
    print("[MainId: 74091][Trigger: Q74091Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74091Trigger1:TriggerIn()
    print("[MainId: 74091][Trigger: Q74091Trigger1] TriggerIn")
    this:DestroySelf()
    local actor = actorMgr:GetActor("74091")
    if actor:GetSubQuestState(7409101) ~= 3 then
        actor:NarratorOnlyTaskByData(datas.NarratorWithId, function(arg1)
            actorUtils.FinishQuestID(false, 7409112)
        end, 74091)
    end
end

function Q74091Trigger1:PreTriggerIn()
    print("[MainId: 74091][Trigger: Q74091Trigger1] PreTriggerIn")
end

function Q74091Trigger1:LightUpTriggerIn()
    print("[MainId: 74091][Trigger: Q74091Trigger1] LightUpTriggerIn")
end

function Q74091Trigger1:TriggerOut()
    print("[MainId: 74091][Trigger: Q74091Trigger1] TriggerOut")
end

return Q74091Trigger1
