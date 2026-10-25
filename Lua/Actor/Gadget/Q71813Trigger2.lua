require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q71813Trigger2 = class("Q71813Trigger2", GadgetActorProxy)
Q71813Trigger2.defaultAlias = "Q71813Trigger2"
local Q71813ClientConfig = require("Quest/Client/Q71813ClientConfig")

local mainID = Q71813ClientConfig.MainID
local actorAlias = Q71813ClientConfig.ActorAlias
local subIDs = Q71813ClientConfig.SubIDs
local npcs = Q71813ClientConfig.Npcs
local datas = Q71813ClientConfig.Datas

function Q71813Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q71813Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q71813Trigger2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 7181308)
end

function Q71813Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q71813Trigger2
