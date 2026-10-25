require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1202605TriggerItto = class("Q1202605TriggerItto", GadgetActorProxy)
Q1202605TriggerItto.defaultAlias = "Q1202605TriggerItto"
local Q12026ClientConfig = require("Quest/Client/Q12026ClientConfig")

local subIDs = Q12026ClientConfig.SubIDs
local npcs = Q12026ClientConfig.Npcs
local gadgets = Q12026ClientConfig.Gadgets
local datas = Q12026ClientConfig.Datas

function Q1202605TriggerItto:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1202605TriggerItto:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1202605TriggerItto:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12026"):CallDelay(1.5, function(arg1)
        actorMgr:GetActor("12026"):ShowBlackScreen(0.4, 2, 0.4, function(arg1)
            local actor = actorMgr:GetActor("12026")
            actor:CreateQuestNpcById(1202605, npcs.Npc1044Data.id, 2)
            actor:RequestInteraction(npcs.Npc1044Data.alias)
        end, nil, nil, "", false, true)
    end)
end

function Q1202605TriggerItto:TriggerOut()
    print("TriggerOut")
end

return Q1202605TriggerItto
