require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72204 = class("Quest72204", QuestActorProxy)
Quest72204.defaultAlias = "Quest72204"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72204:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72204:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7220401"] = self.OnSubStart7220401,
        ["7220408"] = self.OnSubStart7220408,
        ["7220402"] = self.OnSubStart7220402,
        ["7220409"] = self.OnSubStart7220409,
        ["7220403"] = self.OnSubStart7220403,
        ["7220410"] = self.OnSubStart7220410,
        ["7220404"] = self.OnSubStart7220404,
        ["7220411"] = self.OnSubStart7220411,
        ["7220405"] = self.OnSubStart7220405,
        ["7220406"] = self.OnSubStart7220406,
        ["7220407"] = self.OnSubStart7220407,
        ["7220412"] = self.OnSubStart7220412
    }
end

function Quest72204:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7220401"] = self.OnSubFinish7220401,
        ["7220408"] = self.OnSubFinish7220408,
        ["7220402"] = self.OnSubFinish7220402,
        ["7220409"] = self.OnSubFinish7220409,
        ["7220403"] = self.OnSubFinish7220403,
        ["7220410"] = self.OnSubFinish7220410,
        ["7220404"] = self.OnSubFinish7220404,
        ["7220411"] = self.OnSubFinish7220411,
        ["7220405"] = self.OnSubFinish7220405,
        ["7220406"] = self.OnSubFinish7220406,
        ["7220407"] = self.OnSubFinish7220407,
        ["7220412"] = self.OnSubFinish7220412
    }
end

function Quest72204:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7220401"] = self.OnSubFailed7220401,
        ["7220408"] = self.OnSubFailed7220408,
        ["7220402"] = self.OnSubFailed7220402,
        ["7220409"] = self.OnSubFailed7220409,
        ["7220403"] = self.OnSubFailed7220403,
        ["7220410"] = self.OnSubFailed7220410,
        ["7220404"] = self.OnSubFailed7220404,
        ["7220411"] = self.OnSubFailed7220411,
        ["7220405"] = self.OnSubFailed7220405,
        ["7220406"] = self.OnSubFailed7220406,
        ["7220407"] = self.OnSubFailed7220407,
        ["7220412"] = self.OnSubFailed7220412
    }
end

function Quest72204:Start()
    print("Start")
end

function Quest72204:OnDestroy()
    print("OnDestroy")
end

function Quest72204:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72204:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72204:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72204:OnSubStart7220401(arg1)
    print("OnSubStart7220401")
    self:CreateQuestNpc(arg1, npcs.Npc20426Data.id, 1)
end

function Quest72204:OnSubFinish7220401(arg1)
    print("OnSubFinish7220401")
end

function Quest72204:OnSubFailed7220401(arg1)
    print("OnSubFailed7220401")
end

function Quest72204:OnSubStart7220408(arg1)
    print("OnSubStart7220408")
    self:CreateQuestNpc(arg1, npcs.Npc20426Data.id, 1)
end

function Quest72204:OnSubFinish7220408(arg1)
    print("OnSubFinish7220408")
end

function Quest72204:OnSubFailed7220408(arg1)
    print("OnSubFailed7220408")
end

function Quest72204:OnSubStart7220402(arg1)
    print("OnSubStart7220402")
    self:CreateQuestNpc(arg1, npcs.Npc20426Data.id, 1)
end

function Quest72204:OnSubFinish7220402(arg1)
    print("OnSubFinish7220402")
end

function Quest72204:OnSubFailed7220402(arg1)
    print("OnSubFailed7220402")
end

function Quest72204:OnSubStart7220409(arg1)
    print("OnSubStart7220409")
    self:CreateQuestNpc(arg1, npcs.Npc20426Data.id, 1)
end

function Quest72204:OnSubFinish7220409(arg1)
    print("OnSubFinish7220409")
end

function Quest72204:OnSubFailed7220409(arg1)
    print("OnSubFailed7220409")
end

function Quest72204:OnSubStart7220403(arg1)
    print("OnSubStart7220403")
    self:CreateQuestNpc(arg1, npcs.Npc20426Data.id, 1)
end

function Quest72204:OnSubFinish7220403(arg1)
    print("OnSubFinish7220403")
end

function Quest72204:OnSubFailed7220403(arg1)
    print("OnSubFailed7220403")
end

function Quest72204:OnSubStart7220410(arg1)
    print("OnSubStart7220410")
    self:CreateQuestNpc(arg1, npcs.Npc20426Data.id, 1)
end

function Quest72204:OnSubFinish7220410(arg1)
    print("OnSubFinish7220410")
end

function Quest72204:OnSubFailed7220410(arg1)
    print("OnSubFailed7220410")
end

function Quest72204:OnSubStart7220404(arg1)
    print("OnSubStart7220404")
    self:CreateQuestNpc(arg1, npcs.Npc20426Data.id, 1)
end

function Quest72204:OnSubFinish7220404(arg1)
    print("OnSubFinish7220404")
end

function Quest72204:OnSubFailed7220404(arg1)
    print("OnSubFailed7220404")
end

function Quest72204:OnSubStart7220411(arg1)
    print("OnSubStart7220411")
    self:CreateQuestNpc(arg1, npcs.Npc20426Data.id, 1)
end

function Quest72204:OnSubFinish7220411(arg1)
    print("OnSubFinish7220411")
end

function Quest72204:OnSubFailed7220411(arg1)
    print("OnSubFailed7220411")
end

function Quest72204:OnSubStart7220405(arg1)
    print("OnSubStart7220405")
    self:CreateQuestNpc(arg1, npcs.Npc20426Data.id, 1)
end

function Quest72204:OnSubFinish7220405(arg1)
    print("OnSubFinish7220405")
end

function Quest72204:OnSubFailed7220405(arg1)
    print("OnSubFailed7220405")
end

function Quest72204:OnSubStart7220406(arg1)
    print("OnSubStart7220406")
    self:CreateQuestNpc(arg1, npcs.Npc20426Data.id, 1)
end

function Quest72204:OnSubFinish7220406(arg1)
    print("OnSubFinish7220406")
end

function Quest72204:OnSubFailed7220406(arg1)
    print("OnSubFailed7220406")
end

function Quest72204:OnSubStart7220407(arg1)
    print("OnSubStart7220407")
    self:CreateQuestNpc(arg1, npcs.Npc20426Data.id, 1)
end

function Quest72204:OnSubFinish7220407(arg1)
    print("OnSubFinish7220407")
end

function Quest72204:OnSubFailed7220407(arg1)
    print("OnSubFailed7220407")
end

function Quest72204:OnSubStart7220412(arg1)
    print("OnSubStart7220412")
    self:CreateQuestNpc(arg1, npcs.Npc20426Data.id, 1)
end

function Quest72204:OnSubFinish7220412(arg1)
    print("OnSubFinish7220412")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    self:SafeDestroyQuestNpc(npcs.Npc20426Data.alias, 3)
end

function Quest72204:OnSubFailed7220412(arg1)
    print("OnSubFailed7220412")
end

return Quest72204
