require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1120123Trigger_Faild = class("Q1120123Trigger_Faild", GadgetActorProxy)
Q1120123Trigger_Faild.defaultAlias = "Q1120123Trigger_Faild"
local Q11201ClientConfig = require("Quest/Client/Q11201ClientConfig")

local mainID = Q11201ClientConfig.MainID
local actorAlias = Q11201ClientConfig.ActorAlias
local subIDs = Q11201ClientConfig.SubIDs
local npcs = Q11201ClientConfig.Npcs
local datas = Q11201ClientConfig.Datas

function Q1120123Trigger_Faild:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1120123Trigger_Faild:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(80.9369, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1120123Trigger_Faild:TriggerIn()
    print("TriggerIn")
end

function Q1120123Trigger_Faild:TriggerOut()
    local actor = actorMgr:GetActor("11201")
    if actor ~= nil then
        actor:FinishQuestID(true, 1120123)
    end
end

return Q1120123Trigger_Faild
