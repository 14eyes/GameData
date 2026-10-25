require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7219201Trigger_01 = class("Q7219201Trigger_01", GadgetActorProxy)
Q7219201Trigger_01.defaultAlias = "Q7219201Trigger_01"
local Q72192ClientConfig = require("Quest/Client/Q72192ClientConfig")

local mainID = Q72192ClientConfig.MainID
local actorAlias = Q72192ClientConfig.ActorAlias
local subIDs = Q72192ClientConfig.SubIDs
local datas = Q72192ClientConfig.Datas

function Q7219201Trigger_01:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7219201Trigger_01:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(14.9255, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7219201Trigger_01:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 7219201)
    self:DestroySelf()
end

function Q7219201Trigger_01:TriggerOut()
    print("TriggerOut")
end

return Q7219201Trigger_01
