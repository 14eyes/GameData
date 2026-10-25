require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7226517TriggerTalkGiving = class("Q7226517TriggerTalkGiving", GadgetActorProxy)
Q7226517TriggerTalkGiving.defaultAlias = "Q7226517TriggerTalkGiving"
local Q72265ClientConfig = require("Quest/Client/Q72265ClientConfig")

local subIDs = Q72265ClientConfig.SubIDs
local npcs = Q72265ClientConfig.Npcs
local datas = Q72265ClientConfig.Datas

function Q7226517TriggerTalkGiving:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7226517TriggerTalkGiving:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7226517TriggerTalkGiving:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72265"):RequestInteraction(npcs.Npc20482Data.alias)
    self:DestroySelf()
end

function Q7226517TriggerTalkGiving:TriggerOut()
    print("TriggerOut")
end

return Q7226517TriggerTalkGiving
