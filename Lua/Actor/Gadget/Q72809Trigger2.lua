require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72809Trigger2 = class("Q72809Trigger2", GadgetActorProxy)
Q72809Trigger2.defaultAlias = "Q72809Trigger2"
local Q72809ClientConfig = require("Quest/Client/Q72809ClientConfig")

local subIDs = Q72809ClientConfig.SubIDs
local npcs = Q72809ClientConfig.Npcs
local datas = Q72809ClientConfig.Datas

function Q72809Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72809Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72809Trigger2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72809"):NarratorOnlyTask(datas.NarratorTable1, nil, "")
    self:DestroySelf()
end

function Q72809Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q72809Trigger2
