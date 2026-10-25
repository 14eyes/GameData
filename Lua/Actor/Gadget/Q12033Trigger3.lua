require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12033Trigger3 = class("Q12033Trigger3", GadgetActorProxy)
Q12033Trigger3.defaultAlias = "Q12033Trigger3"
local Q12033ClientConfig = require("Quest/Client/Q12033ClientConfig")

local subIDs = Q12033ClientConfig.SubIDs
local npcs = Q12033ClientConfig.Npcs
local datas = Q12033ClientConfig.Datas

function Q12033Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12033Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12033Trigger3:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12033"):ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("12033")
        actor:CreateQuestNpcById(1203312, npcs.Npc1047Data.id, 0)
        actor:RequestInteraction(npcs.Npc1047Data.alias)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q12033Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q12033Trigger3
