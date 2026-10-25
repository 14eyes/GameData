require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4003103Trigger = class("Q4003103Trigger", GadgetActorProxy)
Q4003103Trigger.defaultAlias = "Q4003103Trigger"
local Q40031ClientConfig = require("Quest/Client/Q40031ClientConfig")

local subIDs = Q40031ClientConfig.SubIDs
local npcs = Q40031ClientConfig.Npcs
local datas = Q40031ClientConfig.Datas

function Q4003103Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4003103Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4003103Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40031")
    actor:FinishQuestID(false, 4003110)
    actor:RequestInteraction(npcs.Npc3042Data.alias)
    actor:CallDelay(0.5, function(arg1)
        actorMgr:GetActor("40031"):FinishQuestID(false, 4003109)
    end)

    self:DestroySelf()
end

function Q4003103Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4003103Trigger
