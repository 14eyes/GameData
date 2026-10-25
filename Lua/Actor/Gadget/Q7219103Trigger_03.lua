require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7219103Trigger_03 = class("Q7219103Trigger_03", GadgetActorProxy)
Q7219103Trigger_03.defaultAlias = "Q7219103Trigger_03"
local Q72191ClientConfig = require("Quest/Client/Q72191ClientConfig")

local mainID = Q72191ClientConfig.MainID
local actorAlias = Q72191ClientConfig.ActorAlias
local subIDs = Q72191ClientConfig.SubIDs
local datas = Q72191ClientConfig.Datas

function Q7219103Trigger_03:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7219103Trigger_03:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(17.96889, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7219103Trigger_03:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 7219103)
    self:DestroySelf()
end

function Q7219103Trigger_03:TriggerOut()
    print("TriggerOut")
end

return Q7219103Trigger_03
