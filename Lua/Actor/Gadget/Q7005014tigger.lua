require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7005014tigger = class("Q7005014tigger", GadgetActorProxy)
Q7005014tigger.defaultAlias = "Q7005014tigger"
local Q70050ClientConfig = require("Quest/Client/Q70050ClientConfig")

local this
local subIDs = Q70050ClientConfig.SubIDs
local datas = Q70050ClientConfig.Datas
local npcs = Q70050ClientConfig.Npcs
local points = Q70050ClientConfig.Points

function Q7005014tigger:OnPostDataPrepare()
    print("Q7005014tigger - OnPostDataPrepare")
    this = self
end

function Q7005014tigger:OnPostComponentPrepare()
    print("Q7005014tigger - OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70050)
end

function Q7005014tigger:TriggerIn()
    print("Q7005014tigger - TriggerIn")
    actorMgr:GetActor("70050"):ShowBlackScreenWithDialogText(0.5, 2, 0.5, function(arg1)
        actorMgr:GetActor("70050"):GetQuestNpcActor(npcs.Npc5268.alias, 70050):DoFreeStyle(4121, true, nil, true, true, false, false)
        actorMgr:GetActor("70050"):RequestInteraction(npcs.Npc5268.alias, "", true)
        this:DestroySelf()
    end, nil, nil, 0, false, true)
end

function Q7005014tigger:PreTriggerIn()
    print("Q7005014tigger - PreTriggerIn")
end

function Q7005014tigger:LightUpTriggerIn()
    print("Q7005014tigger - LightUpTriggerIn")
end

function Q7005014tigger:TriggerOut()
    print("Q7005014tigger - TriggerOut")
end

return Q7005014tigger
