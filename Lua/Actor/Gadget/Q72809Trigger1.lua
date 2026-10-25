require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72809Trigger1 = class("Q72809Trigger1", GadgetActorProxy)
Q72809Trigger1.defaultAlias = "Q72809Trigger1"
local Q72809ClientConfig = require("Quest/Client/Q72809ClientConfig")

local subIDs = Q72809ClientConfig.SubIDs
local npcs = Q72809ClientConfig.Npcs
local datas = Q72809ClientConfig.Datas

function Q72809Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72809Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72809Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72809"):NarratorOnlyTask(datas.NarratorTable, nil, "")
    self:DestroySelf()
end

function Q72809Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q72809Trigger1
