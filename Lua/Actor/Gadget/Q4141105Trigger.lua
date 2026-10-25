require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4141105Trigger = class("Q4141105Trigger", GadgetActorProxy)
Q4141105Trigger.defaultAlias = "Q4141105Trigger"
local Q41411ClientConfig = require("Quest/Client/Q41411ClientConfig")

local mainID = Q41411ClientConfig.MainID
local actorAlias = Q41411ClientConfig.ActorAlias
local subIDs = Q41411ClientConfig.SubIDs
local npcs = Q41411ClientConfig.Npcs
local datas = Q41411ClientConfig.Datas

function Q4141105Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4141105Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4141105Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(Q41411ClientConfig.ActorAlias)
    if actor ~= nil then
        print("q41411Cfg")
        actor:RequestInteractionForceAlias("Npc1457")
    end

    self:DestroySelf()
end

function Q4141105Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4141105Trigger
