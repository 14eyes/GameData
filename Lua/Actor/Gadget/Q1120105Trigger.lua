require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1120105Trigger = class("Q1120105Trigger", GadgetActorProxy)
Q1120105Trigger.defaultAlias = "Q1120105Trigger"
local Q11201ClientConfig = require("Quest/Client/Q11201ClientConfig")

local mainID = Q11201ClientConfig.MainID
local actorAlias = Q11201ClientConfig.ActorAlias
local subIDs = Q11201ClientConfig.SubIDs
local npcs = Q11201ClientConfig.Npcs
local datas = Q11201ClientConfig.Datas

function Q1120105Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1120105Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(6.337245, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1120105Trigger:TriggerIn()
    local actor = actorMgr:GetActor("11201")
    if actor ~= nil then
        actor:FinishQuestID(false, 1120117)
    end
end

function Q1120105Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1120105Trigger
