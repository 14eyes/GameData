require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q71813Trigger3 = class("Q71813Trigger3", GadgetActorProxy)
Q71813Trigger3.defaultAlias = "Q71813Trigger3"
local Q71813ClientConfig = require("Quest/Client/Q71813ClientConfig")

local mainID = Q71813ClientConfig.MainID
local actorAlias = Q71813ClientConfig.ActorAlias
local subIDs = Q71813ClientConfig.SubIDs
local npcs = Q71813ClientConfig.Npcs
local datas = Q71813ClientConfig.Datas

function Q71813Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q71813Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q71813Trigger3:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 7181309)
end

function Q71813Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q71813Trigger3
