require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q301915Talk = class("Q301915Talk", GadgetActorProxy)
Q301915Talk.defaultAlias = "Q301915Talk"
local Q3019ClientConfig = require("Quest/Client/Q3019ClientConfig")

local subIDs = Q3019ClientConfig.SubIDs
local npcs = Q3019ClientConfig.Npcs
local datas = Q3019ClientConfig.Datas

function Q301915Talk:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q301915Talk:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q301915Talk:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3019"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("3019")
        actor:CreateQuestNpcById(301915, npcs.Npc12707Data.id, 0)
        actor:RequestInteraction(npcs.Npc12707Data.alias)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q301915Talk:TriggerOut()
    print("TriggerOut")
end

return Q301915Talk
