require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302112Talk = class("Q302112Talk", GadgetActorProxy)
Q302112Talk.defaultAlias = "Q302112Talk"
local Q3021ClientConfig = require("Quest/Client/Q3021ClientConfig")

local subIDs = Q3021ClientConfig.SubIDs
local npcs = Q3021ClientConfig.Npcs
local datas = Q3021ClientConfig.Datas

function Q302112Talk:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q302112Talk:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302112Talk:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3021"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("3021")
        actor:CreateQuestNpcById(302112, npcs.Npc1059Data.id, 0)
        actor:RequestInteraction(npcs.Npc1059Data.alias)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q302112Talk:TriggerOut()
    print("TriggerOut")
end

return Q302112Talk
