require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12022Trigger1 = class("Q12022Trigger1", GadgetActorProxy)
Q12022Trigger1.defaultAlias = "Q12022Trigger1"
local Q12022ClientConfig = require("Quest/Client/Q12022ClientConfig")

local subIDs = Q12022ClientConfig.SubIDs
local npcs = Q12022ClientConfig.Npcs
local datas = Q12022ClientConfig.Datas

function Q12022Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12022Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12022Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12022"):FinishQuestID(false, 1202205)
end

function Q12022Trigger1:TriggerOut()
    print("TriggerOut")
    self:DestroySelf()
end

return Q12022Trigger1
