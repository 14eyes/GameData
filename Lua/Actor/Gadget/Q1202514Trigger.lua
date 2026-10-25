require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1202514Trigger = class("Q1202514Trigger", GadgetActorProxy)
Q1202514Trigger.defaultAlias = "Q1202514Trigger"
local Q12025ClientConfig = require("Quest/Client/Q12025ClientConfig")

local subIDs = Q12025ClientConfig.SubIDs
local npcs = Q12025ClientConfig.Npcs
local gadgets = Q12025ClientConfig.Gadgets
local datas = Q12025ClientConfig.Datas

function Q1202514Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1202514Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1202514Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12025"):ShowBlackScreen(0.4, 2, 0.4, function(arg1)
        local actor = actorMgr:GetActor("12025")
        actor:CreateQuestNpcById(1202514, npcs.Npc1044Data.id, 2)
        actor:RequestInteraction(npcs.Npc1044Data.alias)
    end, nil, nil, "", false, true)
end

function Q1202514Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1202514Trigger
