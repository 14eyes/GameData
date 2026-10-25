require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12035Trigger1 = class("Q12035Trigger1", GadgetActorProxy)
Q12035Trigger1.defaultAlias = "Q12035Trigger1"
local Q12035ClientConfig = require("Quest/Client/Q12035ClientConfig")

local subIDs = Q12035ClientConfig.SubIDs
local npcs = Q12035ClientConfig.Npcs
local datas = Q12035ClientConfig.Datas

function Q12035Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12035Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12035Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12035"):NarratorOnlyTaskByData(datas.Narrator2, nil, 12035)
    self:DestroySelf()
end

function Q12035Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q12035Trigger1
