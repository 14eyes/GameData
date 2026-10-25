require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302018Talk = class("Q302018Talk", GadgetActorProxy)
Q302018Talk.defaultAlias = "Q302018Talk"
local Q3020ClientConfig = require("Quest/Client/Q3020ClientConfig")

local subIDs = Q3020ClientConfig.SubIDs
local npcs = Q3020ClientConfig.Npcs
local datas = Q3020ClientConfig.Datas

function Q302018Talk:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q302018Talk:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302018Talk:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3020"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("3020")
        actor:CreateQuestNpcById(302018, npcs.Npc1053Data.id, 0)
        actor:RequestInteraction(npcs.Npc1053Data.alias)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q302018Talk:TriggerOut()
    print("TriggerOut")
end

return Q302018Talk
