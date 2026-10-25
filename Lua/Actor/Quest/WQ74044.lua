require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74044 = class("Quest74044", QuestActorProxy)
Quest74044.defaultAlias = "Quest74044"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74044:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74044:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7404402"] = self.OnSubStart7404402,
        ["7404404"] = self.OnSubStart7404404,
        ["7404422"] = self.OnSubStart7404422,
        ["7404423"] = self.OnSubStart7404423,
        ["7404403"] = self.OnSubStart7404403,
        ["7404418"] = self.OnSubStart7404418,
        ["7404419"] = self.OnSubStart7404419,
        ["7404405"] = self.OnSubStart7404405,
        ["7404406"] = self.OnSubStart7404406,
        ["7404420"] = self.OnSubStart7404420,
        ["7404407"] = self.OnSubStart7404407,
        ["7404408"] = self.OnSubStart7404408,
        ["7404421"] = self.OnSubStart7404421,
        ["7404409"] = self.OnSubStart7404409,
        ["7404410"] = self.OnSubStart7404410,
        ["7404411"] = self.OnSubStart7404411,
        ["7404412"] = self.OnSubStart7404412,
        ["7404416"] = self.OnSubStart7404416,
        ["7404417"] = self.OnSubStart7404417,
        ["7404401"] = self.OnSubStart7404401
    }
end

function Quest74044:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7404402"] = self.OnSubFinish7404402,
        ["7404404"] = self.OnSubFinish7404404,
        ["7404422"] = self.OnSubFinish7404422,
        ["7404423"] = self.OnSubFinish7404423,
        ["7404403"] = self.OnSubFinish7404403,
        ["7404418"] = self.OnSubFinish7404418,
        ["7404419"] = self.OnSubFinish7404419,
        ["7404405"] = self.OnSubFinish7404405,
        ["7404406"] = self.OnSubFinish7404406,
        ["7404420"] = self.OnSubFinish7404420,
        ["7404407"] = self.OnSubFinish7404407,
        ["7404408"] = self.OnSubFinish7404408,
        ["7404421"] = self.OnSubFinish7404421,
        ["7404409"] = self.OnSubFinish7404409,
        ["7404410"] = self.OnSubFinish7404410,
        ["7404411"] = self.OnSubFinish7404411,
        ["7404412"] = self.OnSubFinish7404412,
        ["7404416"] = self.OnSubFinish7404416,
        ["7404417"] = self.OnSubFinish7404417,
        ["7404401"] = self.OnSubFinish7404401
    }
end

function Quest74044:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74044:Start()
    print("Start")
end

function Quest74044:OnDestroy()
    print("OnDestroy")
end

function Quest74044:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74044:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74044:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74044:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4)
end

function Quest74044:OnSubStart7404402(arg1)
    print("OnSubStart7404402")
    this:NpcCreateWithNpcTrigger(npcs.Npc5313Data.id, 7404402, 0, 3)
end

function Quest74044:OnSubFinish7404402(arg1)
    print("OnSubFinish7404402")
    this:ShowBlackScreenWithDialogText(0.5, 2, 0.5, nil, nil, nil, 0, false, true)
    this:SafeDestroyQuestNpc(npcs.Npc5313Data.alias, 3)
end

function Quest74044:OnSubStart7404404(arg1)
    print("OnSubStart7404404")
end

function Quest74044:OnSubFinish7404404(arg1)
    print("OnSubFinish7404404")
end

function Quest74044:OnSubStart7404422(arg1)
    print("OnSubStart7404422")
    this:NpcCreateWithNpcTrigger(npcs.Npc5313Data.id, 7404422, 0, 3)
end

function Quest74044:OnSubFinish7404422(arg1)
    print("OnSubFinish7404422")
    this:ShowBlackScreenWithDialogText(0.5, 2, 0.5, nil, nil, nil, 0, false, true)
    this:SafeDestroyQuestNpc(npcs.Npc5313Data.alias, 3)
end

function Quest74044:OnSubStart7404423(arg1)
    print("OnSubStart7404423")
end

function Quest74044:OnSubFinish7404423(arg1)
    print("OnSubFinish7404423")
end

function Quest74044:OnSubStart7404403(arg1)
    print("OnSubStart7404403")
    this:NpcCreateWithNpcTrigger(npcs.Npc5311Data.id, 7404403, 0, 10)
    this:CreateQuestNpc(arg1, npcs.Npc5305Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21093Data.id, 0)
end

function Quest74044:OnSubFinish7404403(arg1)
    print("OnSubFinish7404403")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest74044:OnSubStart7404418(arg1)
    print("OnSubStart7404418")
    this:CreateQuestNpc(arg1, npcs.Npc5311Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5305Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21093Data.id, 0)
end

function Quest74044:OnSubFinish7404418(arg1)
    print("OnSubFinish7404418")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0, function(arg1)
        actorUtils.FinishQuestID(false, 7404411)
    end, nil, nil, 0, false, true)
end

function Quest74044:OnSubStart7404419(arg1)
    print("OnSubStart7404419")
end

function Quest74044:OnSubFinish7404419(arg1)
    print("OnSubFinish7404419")
end

function Quest74044:OnSubStart7404405(arg1)
    print("OnSubStart7404405")
end

function Quest74044:OnSubFinish7404405(arg1)
    print("OnSubFinish7404405")
end

function Quest74044:OnSubStart7404406(arg1)
    print("OnSubStart7404406")
end

function Quest74044:OnSubFinish7404406(arg1)
    print("OnSubFinish7404406")
end

function Quest74044:OnSubStart7404420(arg1)
    print("OnSubStart7404420")
end

function Quest74044:OnSubFinish7404420(arg1)
    print("OnSubFinish7404420")
end

function Quest74044:OnSubStart7404407(arg1)
    print("OnSubStart7404407")
end

function Quest74044:OnSubFinish7404407(arg1)
    print("OnSubFinish7404407")
end

function Quest74044:OnSubStart7404408(arg1)
    print("OnSubStart7404408")
end

function Quest74044:OnSubFinish7404408(arg1)
    print("OnSubFinish7404408")
end

function Quest74044:OnSubStart7404421(arg1)
    print("OnSubStart7404421")
end

function Quest74044:OnSubFinish7404421(arg1)
    print("OnSubFinish7404421")
end

function Quest74044:OnSubStart7404409(arg1)
    print("OnSubStart7404409")
end

function Quest74044:OnSubFinish7404409(arg1)
    print("OnSubFinish7404409")
end

function Quest74044:OnSubStart7404410(arg1)
    print("OnSubStart7404410")
end

function Quest74044:OnSubFinish7404410(arg1)
    print("OnSubFinish7404410")
end

function Quest74044:OnSubStart7404411(arg1)
    print("OnSubStart7404411")
end

function Quest74044:OnSubFinish7404411(arg1)
    print("OnSubFinish7404411")
    this:TransmitPlayerById(arg1, 1)
end

function Quest74044:OnSubStart7404412(arg1)
    print("OnSubStart7404412")
    this:NpcCreateWithNpcTrigger(npcs.Npc5311Data.id, 7404412, 0, 10)
    this:CreateQuestNpc(arg1, npcs.Npc5305Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21093Data.id, 0)
end

function Quest74044:OnSubFinish7404412(arg1)
    print("OnSubFinish7404412")
    this:TransmitPlayerById(arg1, 1)
end

function Quest74044:OnSubStart7404416(arg1)
    print("OnSubStart7404416")
    this:CreateQuestNpc(arg1, npcs.Npc5313Data.id, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc5311Data.id, 7404416, 0, 10)
    this:CreateQuestNpc(arg1, npcs.Npc5305Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21093Data.id, 0)
end

function Quest74044:OnSubFinish7404416(arg1)
    print("OnSubFinish7404416")
    this:ShowBlackScreenWithDialogText(0.5, 2, 0.5, nil, nil, nil, 0, false, true)
    this:SafeDestroyQuestNpc(npcs.Npc5313Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5311Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5305Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21093Data.alias, 3)
end

function Quest74044:OnSubStart7404417(arg1)
    print("OnSubStart7404417")
end

function Quest74044:OnSubFinish7404417(arg1)
    print("OnSubFinish7404417")
end

function Quest74044:OnSubStart7404401(arg1)
    print("OnSubStart7404401")
end

function Quest74044:OnSubFinish7404401(arg1)
    print("OnSubFinish7404401")
end

return Quest74044
