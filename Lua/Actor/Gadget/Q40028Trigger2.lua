require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40028Trigger2 = class("Q40028Trigger2", GadgetActorProxy)
Q40028Trigger2.defaultAlias = "Q40028Trigger2"
local Q40028ClientConfig = require("Quest/Client/Q40028ClientConfig")

local subIDs = Q40028ClientConfig.SubIDs
local npcs = Q40028ClientConfig.Npcs
local gadgets = Q40028ClientConfig.Gadgets
local datas = Q40028ClientConfig.Datas

function Q40028Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40028Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40028Trigger2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40028"):FinishQuestID(false, 4002808)
end

function Q40028Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q40028Trigger2
