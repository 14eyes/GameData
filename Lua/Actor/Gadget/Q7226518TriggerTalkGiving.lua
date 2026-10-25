require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7226518TriggerTalkGiving = class("Q7226518TriggerTalkGiving", GadgetActorProxy)
Q7226518TriggerTalkGiving.defaultAlias = "Q7226518TriggerTalkGiving"
local Q72265ClientConfig = require("Quest/Client/Q72265ClientConfig")

local subIDs = Q72265ClientConfig.SubIDs
local npcs = Q72265ClientConfig.Npcs
local datas = Q72265ClientConfig.Datas

function Q7226518TriggerTalkGiving:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7226518TriggerTalkGiving:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7226518TriggerTalkGiving:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72265"):RequestInteraction(npcs.Npc20482Data.alias)
    self:DestroySelf()
end

function Q7226518TriggerTalkGiving:TriggerOut()
    print("TriggerOut")
end

return Q7226518TriggerTalkGiving
