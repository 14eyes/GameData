require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73003Trigger = class("Q73003Trigger", GadgetActorProxy)
Q73003Trigger.defaultAlias = "Q73003Trigger"
local Q73003ClientConfig = require("Quest/Client/Q73003ClientConfig")

local subIDs = Q73003ClientConfig.SubIDs
local npcs = Q73003ClientConfig.Npcs
local datas = Q73003ClientConfig.Datas

function Q73003Trigger_7300313_narrator.OnPostDataPrepare(arg1)
    print("OnPostDataPrepare")
end

function Q73003Trigger_7300313_narrator:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73003Trigger_7300313_narrator:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73003"):NarratorOnlyTaskByData(datas.NarratorWithId, nil, 73003)
    self:DestroySelf()
end

function Q73003Trigger_7300313_narrator.TriggerOut(arg1)
    print("TriggerOut")
end

return Q73003Trigger
