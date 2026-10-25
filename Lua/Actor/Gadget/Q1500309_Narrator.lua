require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1500309_Narrator = class("Q1500309_Narrator", GadgetActorProxy)
Q1500309_Narrator.defaultAlias = "Q1500309_Narrator"
local Q15003ClientConfig = require("Quest/Client/Q15003ClientConfig")

local this
local subIDs = Q15003ClientConfig.SubIDs
local datas = Q15003ClientConfig.Datas
local npcs = Q15003ClientConfig.Npcs
local points = Q15003ClientConfig.Points

function Q1500309_Narrator:OnPostDataPrepare()
    print("Q1500309_Narrator - OnPostDataPrepare")
    this = self
end

function Q1500309_Narrator:OnPostComponentPrepare()
    print("Q1500309_Narrator - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15003)
end

function Q1500309_Narrator:TriggerIn()
    print("Q1500309_Narrator - TriggerIn")
    actorMgr:GetActor("15003"):QuestNarratorTask(datas.NarratorWithId_1500399, nil)
    this:DestroySelf()
end

function Q1500309_Narrator:PreTriggerIn()
    print("Q1500309_Narrator - PreTriggerIn")
end

function Q1500309_Narrator:LightUpTriggerIn()
    print("Q1500309_Narrator - LightUpTriggerIn")
end

function Q1500309_Narrator:TriggerOut()
    print("Q1500309_Narrator - TriggerOut")
end

return Q1500309_Narrator
