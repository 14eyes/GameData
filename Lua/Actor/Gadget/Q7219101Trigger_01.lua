require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7219101Trigger_01 = class("Q7219101Trigger_01", GadgetActorProxy)
Q7219101Trigger_01.defaultAlias = "Q7219101Trigger_01"
local Q72191ClientConfig = require("Quest/Client/Q72191ClientConfig")

local mainID = Q72191ClientConfig.MainID
local actorAlias = Q72191ClientConfig.ActorAlias
local subIDs = Q72191ClientConfig.SubIDs
local datas = Q72191ClientConfig.Datas

function Q7219101Trigger_01:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7219101Trigger_01:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(16.26838, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7219101Trigger_01:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 7219101)
    self:DestroySelf()
end

function Q7219101Trigger_01:TriggerOut()
    print("TriggerOut")
end

return Q7219101Trigger_01
