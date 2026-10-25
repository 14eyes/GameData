require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70003Trigger2 = class("Q70003Trigger2", GadgetActorProxy)
Q70003Trigger2.defaultAlias = "Q70003Trigger2"
local Q70003ClientConfig = require("Quest/Client/Q70003ClientConfig")

local mainID = Q70003ClientConfig.MainID
local actorAlias = Q70003ClientConfig.ActorAlias
local subIDs = Q70003ClientConfig.SubIDs
local npcs = Q70003ClientConfig.Npcs
local datas = Q70003ClientConfig.Datas

function Q70003Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q70003Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(18, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q70003Trigger2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):NarratorOnlyTask(datas.Reminder02, nil, "")
    actorMgr:DestroyEntityActor(datas.Q70003Trigger2_.alias, 3, false)
end

function Q70003Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q70003Trigger2
