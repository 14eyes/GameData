require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12022Trigger2 = class("Q12022Trigger2", GadgetActorProxy)
Q12022Trigger2.defaultAlias = "Q12022Trigger2"
local Q12022ClientConfig = require("Quest/Client/Q12022ClientConfig")

local subIDs = Q12022ClientConfig.SubIDs
local npcs = Q12022ClientConfig.Npcs
local datas = Q12022ClientConfig.Datas

function Q12022Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12022Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12022Trigger2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12022"):NarratorOnlyTaskByData(datas.KAICHEA, nil, 12022)
end

function Q12022Trigger2:TriggerOut()
    print("TriggerOut")
    self:DestroySelf()
end

return Q12022Trigger2
