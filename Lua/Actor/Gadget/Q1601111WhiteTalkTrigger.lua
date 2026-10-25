require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1601111WhiteTalkTrigger = class("Q1601111WhiteTalkTrigger", GadgetActorProxy)
Q1601111WhiteTalkTrigger.defaultAlias = "Q1601111WhiteTalkTrigger"
local Q16011ClientConfig = require("Quest/Client/Q16011ClientConfig")

local this
local subIDs = Q16011ClientConfig.SubIDs
local datas = Q16011ClientConfig.Datas
local npcs = Q16011ClientConfig.Npcs
local points = Q16011ClientConfig.Points

function Q1601111WhiteTalkTrigger:OnPostDataPrepare()
    print("Q1601111WhiteTalkTrigger - OnPostDataPrepare")
    this = self
end

function Q1601111WhiteTalkTrigger:OnPostComponentPrepare()
    print("Q1601111WhiteTalkTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16011)
end

function Q1601111WhiteTalkTrigger:TriggerIn()
    print("Q1601111WhiteTalkTrigger - TriggerIn")
end

function Q1601111WhiteTalkTrigger:PreTriggerIn()
    print("Q1601111WhiteTalkTrigger - PreTriggerIn")
end

function Q1601111WhiteTalkTrigger:LightUpTriggerIn()
    print("Q1601111WhiteTalkTrigger - LightUpTriggerIn")
    actorMgr:GetActor("16011"):ShowBlackScreen(0, 1, 0.5, function(arg1)
        actorMgr:GetActor("16011"):CreateQuestNpcByIdWithPos(1601111, npcs.Npc1310_1.id, 0, {x = 1897.969, y = 201, z = -1273}, {x = 0, y = 0, z = 0})
        actorMgr:GetActor("16011"):RequestInteraction(npcs.Npc1310_1.alias, "", true)
        this:DestroySelf()
    end, nil, nil, "", true, true)
end

function Q1601111WhiteTalkTrigger:TriggerOut()
    print("Q1601111WhiteTalkTrigger - TriggerOut")
end

return Q1601111WhiteTalkTrigger
