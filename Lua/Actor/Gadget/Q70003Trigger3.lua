require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70003Trigger3 = class("Q70003Trigger3", GadgetActorProxy)
Q70003Trigger3.defaultAlias = "Q70003Trigger3"
local Q70003ClientConfig = require("Quest/Client/Q70003ClientConfig")

local mainID = Q70003ClientConfig.MainID
local actorAlias = Q70003ClientConfig.ActorAlias
local subIDs = Q70003ClientConfig.SubIDs
local npcs = Q70003ClientConfig.Npcs
local datas = Q70003ClientConfig.Datas

function Q70003Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q70003Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q70003Trigger3:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 7000306)
end

function Q70003Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q70003Trigger3
