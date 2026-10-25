require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1302107Talk = class("Q1302107Talk", GadgetActorProxy)
Q1302107Talk.defaultAlias = "Q1302107Talk"
local Q13021ClientConfig = require("Quest/Client/Q13021ClientConfig")

local this
local subIDs = Q13021ClientConfig.SubIDs
local npcs = Q13021ClientConfig.Npcs
local datas = Q13021ClientConfig.Datas

function Q1302107Talk:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1302107Talk:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1302107Talk:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13021"):ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("13021")
        actor:CreateQuestNpcById(1302107, npcs.Npc1053Data.id, 0)
        actor:RequestInteraction(npcs.Npc1053Data.alias)
    end, nil, nil, "", false, true)

    this:DestroySelf()
end

function Q1302107Talk:TriggerOut()
    print("TriggerOut")
end

return Q1302107Talk
